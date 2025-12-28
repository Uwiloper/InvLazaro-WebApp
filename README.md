<div align="center">
  <img src="fotos/InvLazaro-Fondo-01.webp" width="100%" style="border-radius: 10px;" alt="Banner Inversiones Lázaro">  
  
  <br />
  
  <h1 align="center">Inversiones Lázaro - Web Platform</h1>

  <p align="center">
    <strong>Metalmechanic ERP & E-Commerce Solution.</strong>
    <br />
    Plataforma integral desarrollada con Spring Boot y Java 17.
    <br />
    <br />
    <a href="TU_LINK_DE_DEMO_AQUI">Ver Demo</a>
    ·
    <a href="#funcionalidades">Funcionalidades</a>
    ·
    <a href="#instalacion">Instalación</a>
  </p>

  <p align="center">
    <img src="https://img.shields.io/badge/Java-17-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white" alt="Java 17">
    <img src="https://img.shields.io/badge/Spring_Boot-3.5-6DB33F?style=for-the-badge&logo=spring&logoColor=white" alt="Spring Boot">
    <img src="https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
    <img src="https://img.shields.io/badge/Thymeleaf-Template-005F0F?style=for-the-badge&logo=thymeleaf&logoColor=white" alt="Thymeleaf">
    <img src="https://img.shields.io/badge/Bootstrap-5-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white" alt="Bootstrap">
  </p>
</div>

<br />

<div align="center">
  <img src="fotos/InvLazaro-pantallas-01.webp" width="100%" style="border-radius: 10px;" alt="Vistas de la App">
</div>

<br />

## Sobre el Proyecto

**Inversiones Lázaro** es una web empresarial ("Metalmecánica ERP") robusta y escalable. Construida bajo una arquitectura monolítica modular con **Spring Boot**, el sistema unifica la venta comercial con la gestión operativa.

La aplicación funciona como un híbrido: por un lado, un **E-commerce B2C** moderno con cotizador paramétrico en tiempo real; por otro, un **Back-Office Administrativo** para controlar inventarios, logística de despacho, finanzas y contenido web (CMS), optimizando el flujo de trabajo de la empresa metalmecánica.

---

<h2 id="funcionalidades">Funcionalidades Principales</h2>

### Experiencia de Compra & Cotización (Cliente)
* **Cotizador Paramétrico:** Algoritmo personalizado que calcula precios de productos a medida (ej. hornos, cajas chinas) basándose en dimensiones (Alto x Ancho x Largo), materiales y mano de obra.
* **Carrito Persistente:** Gestión de pedidos en sesión y base de datos con flujo de checkout optimizado.
* **Pasarela de Pagos:** Integración segura con **Stripe** para procesamiento de tarjetas de crédito/débito.
* **Validación de Identidad:** Conexión con API externa (**APIPeruDev**) para autocompletado de datos DNI/RUC en tiempo real.

### Gestión Administrativa (ERP)
* **Logística y Despacho:** Módulo completo para gestión de almacenes, registro de choferes/unidades y asignación de rutas de entrega.
* **Dashboard Financiero:** Métricas visuales de ingresos, productos más vendidos y estados de pedidos.
* **CMS Integrado:** Editor visual para modificar banners, textos y secciones del Home sin intervención de código.
* **Reportes y Auditoría:** Generación automática de documentos PDF/Excel (OpenPDF, Apache POI) y registro inmutable de acciones de usuarios.

---

## Especificaciones Técnicas

### Arquitectura & Diseño
El proyecto sigue el patrón **MVC (Modelo-Vista-Controlador)** con una separación clara de responsabilidades, utilizando Thymeleaf con Layout Dialect para la reutilización de componentes de UI.

* **Seguridad:** Implementación de **Spring Security 6** con roles granulares (ADMIN, CLIENTE, LOGISTICA) y protección CSRF.
* **Persistencia:** Capa de datos gestionada con **Spring Data JPA** y Hibernate.

### Stack Tecnológico
| Componente | Tecnología | Descripción |
| :--- | :--- | :--- |
| **Backend** | Java 17 / Spring Boot 3.5.5 | Núcleo de la lógica de negocio y seguridad. |
| **Database** | MySQL 8 | Relacional, con scripts de inicialización y migración automática. |
| **Frontend** | Thymeleaf + Bootstrap 5 | Renderizado en servidor (SSR) responsive. |
| **Pagos** | Stripe Java SDK | Procesamiento transaccional seguro. |
| **Reportes** | Apache POI / OpenPDF | Generación de documentos administrativos. |

---

<h2 id="instalacion">Instalación y Despliegue</h2>

Sigue estos pasos para ejecutar el proyecto en tu entorno local.

### Prerrequisitos
* Java JDK 17
* Maven 3.8+
* MySQL Server

### Pasos

1.  **Clonar el repositorio**
    ```bash
    git clone [https://github.com/uwiloper/invlazaro-webapp.git](https://github.com/uwiloper/invlazaro-webapp.git)
    ```

2.  **Configuración de Base de Datos**
    Crea el esquema vacío en MySQL. Spring Boot creará las tablas automáticamente al iniciar.
    ```sql
    CREATE DATABASE inversioneslazaro;
    ```
    *(Opcional: Carga los scripts de la carpeta `/databaseSQL` para datos de prueba).*

3.  **Configuración de Variables**
    Edita `src/main/resources/application.properties` con tus credenciales o usa variables de entorno:
    ```properties
    spring.datasource.username=root
    spring.datasource.password=tu_password
    stripe.secret.key=sk_test_...
    api.perudev.token=tu_token
    ```

4.  **Ejecutar**
    Usa el wrapper de Maven incluido:
    ```bash
    ./mvnw spring-boot:run
    ```
    Accede a: `http://localhost:8080`

---

<div align="center">
  <p>Proyecto desarrollado de manera grupal en <strong>Isil</strong></p>
</div>
