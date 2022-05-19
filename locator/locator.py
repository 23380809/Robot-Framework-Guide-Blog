import os
BASE_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '../'))
DRIVER_PATH = BASE_DIR + "/chromedriver"
GOOGLE_INPUT_FIELD = '//input[@name="q"]'
GOOGLE_SEARCH_BTN = '//input[@name="btnK"]'