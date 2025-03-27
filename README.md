# GoodBooks - Aplicación ASP.NET MVC

## 🚀 Descripción del Proyecto

**GoodBooks** es una aplicación web de gestión de libros y autores

GoodBooks es una aplicación web desarrollada en **ASP.NET MVC con C# y SQL Server**. Permite gestionar un catálogo de libros y sus autores, almacenando la información en una base de datos relacional. La aplicación proporciona funcionalidades para listar, agregar y administrar libros y autores.

---

## 🛠 Tecnologías Utilizadas

Las principales tecnologías empleadas en este proyecto incluyen:

- **ASP.NET MVC 5**
- **C# (.NET Framework/Core)**
- **SQL Server + Entity Framework**
- **Bootstrap, CSS y HTML** para el diseño de la interfaz
- **GitHub** para control de versiones

---

## 📌 Pasos para Configurar y Ejecutar la Aplicación

### 🔹 1. Clonar el Repositorio

```bash
git clone https://github.com/TU_USUARIO/NOMBRE_DEL_REPO.git
cd NOMBRE_DEL_REPO
```

###  2. Configurar la Base de Datos

Abrir SQL Server Management Studio (SSMS).

Crear una base de datos con el nombre de "GoodBooks", configurando el nombre de la conexión

```json
"ConnectionStrings": {
    "DefaultConnection": "Server=TU_SERVIDOR;Database=NOMBRE_BD;User Id=TU_USUARIO;Password=TU_PASSWORD;"
}
```

### 3. Ejecutar la Aplicación

En Visual Studio, presionar Ctrl + F5 o ejecutar el siguiente comando:
```bash
dotnet run
```
### Capturas de Pantalla

📷 Ejemplos visuales de la aplicación en funcionamiento:

Página Principal
![image](https://github.com/user-attachments/assets/660bce8c-84fa-440e-b3d5-e6b20f2110f5)

Agregar Libros
![image](https://github.com/user-attachments/assets/c70edd14-5fdd-4b68-b778-491f6b935036)

Agregar Autores
![image](https://github.com/user-attachments/assets/89e21d6e-581b-44f5-9b9c-d4224e863393)

Diagrama Entidad-Relación

📊 Estructura de la base de datos:


![image](https://github.com/user-attachments/assets/1c9ca4f8-eae0-4c73-8068-0a96c7d6ad5f)





