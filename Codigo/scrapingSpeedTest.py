from seleniumwire import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
import json
import time

# Configurar navegador
options = Options()
options.add_argument("--headless")
driver = webdriver.Chrome(
    service=Service(ChromeDriverManager().install()),
    options=options
)

# Cargar página
driver.get("https://www.speedtest.net/global-index/colombia#fixed")
time.sleep(10)  # Esperar a que se carguen las peticiones

# Buscar peticiones que contengan datos
for request in driver.requests:
    if request.response and "countryHistory" in request.url:
        print("✅ URL encontrada:", request.url)
        response_body = request.response.body.decode('utf-8')
        try:
            data = json.loads(response_body)
            print("✅ Datos JSON cargados correctamente.")
            print(json.dumps(data, indent=2)[:1000])  # Muestra parcial
        except Exception as e:
            print("❌ Error al parsear JSON:", e)
        break
else:
    print("❌ No se encontró ninguna petición con 'countryHistory'.")

driver.quit()
