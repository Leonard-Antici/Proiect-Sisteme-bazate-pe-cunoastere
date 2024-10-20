import sys
import tkinter as tk
from tkinter import ttk
from PIL import Image, ImageTk
from clips import Environment
import os

# fereastra principala
root = tk.Tk()
root.title("Perfect Body by A.L.M.")
root.geometry("800x800")
root.configure(bg="#383838")


sex_var = tk.StringVar()
body_type = tk.StringVar()
activity_level_var = tk.StringVar()

# selectarea genului
def select_gender(gender):
    print("Gen selectat:", gender)
    sex_var.set(gender)
    if gender == "feminin":
        afiseaza_alegere_body_type_femeie()
    else:
        afiseaza_alegere_body_type_barbat()

# selectarea tipului de corp
def select_type(type):
    print("Tip corp selectat:", type)
    body_type.set(type)
def select_activity_level(level):
    print("Nivel de activitate selectat:", level)
    activity_level_var.set(level)



def afiseaza_alegere_sex():
    hide_widgets()
    # imaginile pentru alegerea sexului
    button_female.grid(row=0, column=0)
    button_male.grid(row=0, column=1)
    next_button.config(command=afiseaza_alegere_body_type_femeie)
    back_button.config(command=hide_widgets)

def afiseaza_alegere_body_type_femeie():
    hide_widgets()
    #butoanele pentru femei
    button_female_slim.grid(row=0, column=0)
    button_female_average.grid(row=1, column=0)
    button_female_heavy.grid(row=2, column=0)
    next_button.config(
        command=afiseaza_alegere_varsta
    )
    back_button.config(command=afiseaza_alegere_sex)

def afiseaza_alegere_body_type_barbat():
    hide_widgets()
    #butoanele bărbați
    button_male_slim.grid(row=0, column=0)
    button_male_average.grid(row=1, column=0)
    button_male_heavy.grid(row=2, column=0)
    next_button.config(command=afiseaza_alegere_varsta)
    back_button.config(command=afiseaza_alegere_sex)

def afiseaza_alegere_varsta():
    hide_widgets()
    varsta_label.grid(row=0, column=0, sticky="w")
    varsta_entry.grid(row=0, column=1)
    next_button.config(command=afiseaza_alegere_nivel_activitate)
    back_button.config(command=afiseaza_alegere_body_type_femeie if sex_var.get() == "femeie" else afiseaza_alegere_body_type_barbat)

def afiseaza_alegere_nivel_activitate():
    hide_widgets()
    nivel_activitate_label.grid(row=0, column=0, sticky="w")
    button_no_exercise.grid(row=1, column=0)
    button_rare_exercise.grid(row=2, column=0)
    button_normal.grid(row=3, column=0)
    button_very_active.grid(row=4, column=0)
    button_extra_active.grid(row=5, column=0)
    next_button.config(command=afiseaza_alegere_kg)
    back_button.config(command=afiseaza_alegere_varsta)

def afiseaza_alegere_kg():
    hide_widgets()
    kg_label.grid(row=0, column=0, sticky="w")
    kg_entry.grid(row=0, column=1)
    next_button.config(command=afiseaza_alegere_inaltime)
    back_button.config(command=afiseaza_alegere_nivel_activitate)
def afiseaza_alegere_inaltime():
    hide_widgets()
    inaltime_label.grid(row=0, column=0, sticky="w")
    inaltime_entry.grid(row=0, column=1)
    next_button.config(command=salveaza_date)
    back_button.config(command=afiseaza_alegere_kg)


def salveaza_date():
    sex = sex_var.get()
    body = body_type.get()
    varsta = varsta_entry.get()
    inaltime = inaltime_entry.get()
    kg = kg_entry.get()
    activity_level = activity_level_var.get()
    bmi = round(10000 * int(kg) / (int(inaltime) * int(inaltime)), 1)
    with open("intrareClips.txt", "w") as file:
        file.truncate(0)
    with open("intrareClips.txt", "a") as file:
        file.write(
            f"informatie gen {sex}\ninformatie inaltime {inaltime}\ninformatie greutate {kg}\ninformatie bmi {bmi}\ninformatie nivelDeActivitate {activity_level}\ninformatie varsta {varsta}"
        )
    label.config(text="Date salvate cu succes!")
    run_clips()
    next_button.config(text="Start")

"""
def verifica_si_executa_clips():
    sex = sex_var.get()
    body = body_type.get()
    varsta = varsta_entry.get()
    inaltime = inaltime_entry.get()
    kg = kg_entry.get()

    file_path = "intrareClips.txt"
    if os.path.exists(file_path):
        with open(file_path, 'r') as file:
            continut = file.read()
        if continut:
            run_clips(sex, body, varsta, inaltime, kg)  # Transmiterea valorilor către run_clips()
        else:
            label.config(text="Eroare: Fișierul date.txt este gol.")
    else:
        label.config(text="Eroare: Fișierul date.txt nu a fost găsit.")
"""

def run_clips():

    env1 = Environment()
    env1.clear()
    env1.load("AntrenamentFinalPython.clp")
    env1.reset()

    env1.run()

    env2 = Environment()
    env2.clear()
    env2.load("ProiectL.clp")
    env2.reset()
    env2.run()


    facts1 = env1.eval("(get-fact-list *)")
    facts2 = env2.eval("(get-fact-list *)")


    filtered_facts1 = filter_facts(facts1)
    filtered_facts2 = filter_facts(facts2)


    afiseaza_fapte(filtered_facts1, "Rezultate Program de Antrenament")
    afiseaza_fapte(filtered_facts2, "Rezultate Plan Alimentar")

def filter_facts(facts):
    prefixes = ["(zi_antrenament Luni","(zi_antrenament Marti","(zi_antrenament Miercuri","(zi_antrenament Joi","(zi_antrenament Vineri","(zi_antrenament Sambata","(zi_antrenament Duminica", "(ziua ", "(pauza ", "(frecventa ",  "(DailyMealPlan "]
    # Convertim fiecare fact la șir de caractere și apoi verificăm începutul acestuia
    filtered = [str(fact) for fact in facts if any(str(fact).startswith(prefix) for prefix in prefixes)]
    return filtered
def afiseaza_fapte(facts, title):
    # Crearea unei noi ferestre pentru afișarea faptelor
    new_window = tk.Toplevel(root)
    new_window.title(title)
    new_window.geometry("600x400")

    text_area = tk.Text(new_window, wrap=tk.WORD)
    text_area.pack(expand=True, fill='both')

    for fact in facts:
        text_area.insert(tk.END, str(fact) + "\n")

def hide_widgets():
    widgets = [
        button_female, button_male, button_female_slim, button_female_average,
        button_female_heavy, button_male_slim, button_male_average, button_male_heavy,
        varsta_label, varsta_entry, kg_label, kg_entry, inaltime_label, inaltime_entry,
        button_no_exercise, button_rare_exercise, button_normal, button_very_active, button_extra_active,
        nivel_activitate_label
    ]
    for widget in widgets:
        widget.grid_forget()


frame = tk.Frame(root)
frame.pack(padx=20, pady=20)

# imagini femei
image_female = Image.open("imagini/femeie.jpg")
image_female_slim = Image.open("imagini/f_slim.jpg")
image_female_average = Image.open("imagini/f_average.jpg")
image_female_heavy = Image.open("imagini/f_heavy.jpg")

# Redimensionarea imaginilor
width, height = 400, 180
image_female = image_female.resize((150, height))
image_female_slim = image_female_slim.resize((width, height))
image_female_average = image_female_average.resize((width, height))
image_female_heavy = image_female_heavy.resize((width, height))

# Convertirea imaginilor în formatul suportat de Tkinter
img_female = ImageTk.PhotoImage(image_female)
img_female_slim = ImageTk.PhotoImage(image_female_slim)
img_female_average = ImageTk.PhotoImage(image_female_average)
img_female_heavy = ImageTk.PhotoImage(image_female_heavy)

# imagini bărbați
image_male = Image.open("imagini/barbat.jpg")
image_male_slim = Image.open("imagini/b_slim.jpg")
image_male_average = Image.open("imagini/b_average.jpg")
image_male_heavy = Image.open("imagini/b_heavy.jpg")

# Redimensionarea imaginilor
image_male = image_male.resize((150, height))
image_male_slim = image_male_slim.resize((width, height))
image_male_average = image_male_average.resize((width, height))
image_male_heavy = image_male_heavy.resize((width, height))

# Convertirea imaginilor în formatul suportat de Tkinter
img_male = ImageTk.PhotoImage(image_male)
img_male_slim = ImageTk.PhotoImage(image_male_slim)
img_male_average = ImageTk.PhotoImage(image_male_average)
img_male_heavy = ImageTk.PhotoImage(image_male_heavy)

# alegerea genului
button_female = tk.Button(frame, image=img_female, command=lambda: select_gender("feminin"))
button_male = tk.Button(frame, image=img_male, command=lambda: select_gender("masculin"))

# Butoane corp femei
button_female_slim = tk.Button(frame, image=img_female_slim, command=lambda: select_type("slim"))
button_female_average = tk.Button(frame, image=img_female_average, command=lambda: select_type("average"))
button_female_heavy = tk.Button(frame, image=img_female_heavy, command=lambda: select_type("heavy"))

# Butoane tip corp bărbați
button_male_slim = tk.Button(frame, image=img_male_slim, command=lambda: select_type("slim"))
button_male_average = tk.Button(frame, image=img_male_average, command=lambda: select_type("average"))
button_male_heavy = tk.Button(frame, image=img_male_heavy, command=lambda: select_type("heavy"))

# alegerea nivelului de activitate
button_no_exercise = tk.Button(frame, text="Sedentar", command=lambda: select_activity_level("faraExercitii"))
button_rare_exercise = tk.Button(frame, text="Activitate fizică ușoară", command=lambda: select_activity_level("rarExercitii"))
button_normal = tk.Button(frame, text="Activitate fizică moderată", command=lambda: select_activity_level("normal"))
button_very_active = tk.Button(frame, text="Activitate fizică intensă", command=lambda: select_activity_level("foarteActiv"))
button_extra_active = tk.Button(frame, text="Activitate fizică foarte intensă", command=lambda: select_activity_level("extraActiv"))

# Stilizarea butoanelor
button_no_exercise.config(bg="#FF2D2D", fg="white", font=("Helvetica", 12), relief="raised", padx=10, pady=5)  # Roșu
button_rare_exercise.config(bg="#FFD700", fg="black", font=("Helvetica", 12), relief="raised", padx=10, pady=5)  # Galben
button_normal.config(bg="#C1FF72", fg="black", font=("Helvetica", 12), relief="raised", padx=10, pady=5)  # Verde deschis
button_very_active.config(bg="#90EE90", fg="black", font=("Helvetica", 12), relief="raised", padx=10, pady=5)  # Verde
button_extra_active.config(bg="#32CD32", fg="white", font=("Helvetica", 12), relief="raised", padx=10, pady=5)  # Verde intens

# nivelul de activitate
nivel_activitate_label = tk.Label(frame, text="Nivel de activitate:")

# Etichetele și intrările pentru vârstă, înălțime și greutate
varsta_label = tk.Label(frame, text="Vârstă:")
varsta_entry = tk.Entry(frame)
inaltime_label = tk.Label(frame, text="Inaltime:(cm)")
inaltime_entry = tk.Entry(frame)
kg_label = tk.Label(frame, text="Kilograme:")
kg_entry = tk.Entry(frame)

# Stilizare butoane
style = ttk.Style()
style.configure("TButton", font=("helvetica", 12), padding=10, background="lightblue", foreground="black")

# Butoanele pentru Next, back
next_button = ttk.Button(root, text="Next")
next_button.pack(padx=10, pady=10)
back_button = ttk.Button(root, text="Back")
back_button.pack(padx=10, pady=10)

# Eticheta mesaj de confirmare
label = tk.Label(root, text="")
label.pack(pady=10)

# Inițial, afișăm alegerea pentru sex
afiseaza_alegere_sex()

root.mainloop()
