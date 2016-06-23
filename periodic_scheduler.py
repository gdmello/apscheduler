import logging
import requests
from apscheduler.schedulers import background

logging.basicConfig()
scheduler = background.BlockingScheduler()


def minute_schedule():
    print "schedule run started."
    r = requests.get('http://www.google.com')
    print r.url


scheduler.add_job(minute_schedule, 'interval', minutes=1)
scheduler.start()
