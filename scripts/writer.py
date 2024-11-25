
def write_steps():
    # Путь к итоговому файлу
    file_path = 'Data/task1.txt'

    # Запись в файл
    with open(file_path, 'w') as file:
        for step in range(1, 11):
            file.write(f"step {step}\n")

    print(f"Файл '{file_path}' успешно создан и записан.")

if __name__ == "__main__":
    write_steps()
    