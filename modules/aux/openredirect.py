import requests

payload = "//www.google.com/%2e%2e"

with open("bug_bounty.txt", "r") as f:
    for domain in f:
        domain = domain.strip()

        r = requests.get("http://" + domain + payload)
        if "Location" in r.headers and r.headers["Location"] == payload:
            print domain + payload 
