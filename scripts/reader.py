
def read_steps():
    # Пути к файлам
    file_path_writer = '/Data/task1.txt'
    file_path_reader = '/Data/task2.txt'

    # Чтение из файла
    with open(file_path_writer, 'r') as input_file:
        steps = input_file.readlines()

    # Запись в файл
    with open(file_path_reader, 'w') as output_file:
        for step in steps:
            output_file.write(f"read {step.strip()}\n")

    print(f"Файл '{file_path_reader}' успешно создан и записан.")


if __name__ == "__main__":
    read_steps()
