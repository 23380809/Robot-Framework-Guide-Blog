from RequestAPI import RequestAPI


class weather_api():
    def __init__(self):
        self.init = RequestAPI()
    
    def get_weather(self, state):
        url = "https://api.weather.gov/alerts/active?area={}".format(state)
        resp = self.init.request("get", url)
        return resp