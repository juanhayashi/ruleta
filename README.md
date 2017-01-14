# Ruleta (Nnodes)

Ruleta

Para la correcta ejecución, se sugiere utilizar el ambiente de desarrollo local en 'development'.

# Instrucciones
  1. En terminal de linux ingresar al directorio del proyecto
  
  2. Ejecutar comando 'bundle'
  
  3. Settear environment variable: RAILS_ENV=development
  
  4. Ajustar la configuracin de base de datos PostgreSQL en el archivo de configuración database.yml (/config) con las credenciales correspondientes a 'development'
  
  5. Ejecutar los comandos:
  
    1. rake db:create
    
    2. rake db:migrate
    
    3. rake db:seed
    
  
  6. Ejecutar el comando 'whenever --update-crontab --set environment=development'
