# Ruleta (Nnodes)

Ruleta

Para la correcta ejecución, se sugiere utilizar el ambiente de desarrollo local en 'development'.

# Instrucciones
  En terminal de linux ingresar al directorio del proyecto
  Ejecutar comando 'bundle'
  Settear environment variable: RAILS_ENV=development
  Ajustar la configuracin de base de datos PostgreSQL en el archivo de configuración database.yml (/config) con las credenciales correspondientes a 'development'
  Ejecutar los comandos:
    rake db:create
    rake db:migrate
    rake db:seed
  
  Ejecutar el comando 'whenever --update-crontab --set environment=development'
