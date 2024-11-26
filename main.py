import tkinter as tk
from tkinter import messagebox

# Create the main window
root = tk.Tk()
root.title("Simple Tkinter Example")

# Define the function to be called when the button is clicked
def show_message():
    messagebox.showinfo("Message", "Hello, Tkinter!")

# Create a button and attach the function to it
button = tk.Button(root, text="Click Me!", command=show_message)
button.pack(pady=20)

# Start the main event loop
root.mainloop()