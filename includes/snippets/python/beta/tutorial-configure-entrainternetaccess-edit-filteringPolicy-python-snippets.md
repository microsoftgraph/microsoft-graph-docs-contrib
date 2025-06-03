# Python sample: Edit a filtering policy to add a destination using PATCH
import requests
import json

access_token = 'YOUR_ACCESS_TOKEN'
url = 'https://graph.microsoft.com/beta/networkaccess/filteringPolicies/cccccccc-2222-3333-4444-dddddddddddd/policyRules/<policyRuleId>'
headers = {
    'Authorization': f'Bearer {access_token}',
    'Content-Type': 'application/json'
}
data = {
    "@odata.type": "#microsoft.graph.networkaccess.fqdnFilteringRule",
    "destinations": [
        {"@odata.type": "#microsoft.graph.networkaccess.fqdn", "value": "bing.com"},
        {"@odata.type": "#microsoft.graph.networkaccess.fqdn", "value": "*.bing.com"},
        {"@odata.type": "#microsoft.graph.networkaccess.fqdn", "value": "bing.co.uk"}
    ]
}
response = requests.patch(url, headers=headers, data=json.dumps(data))
print(response.status_code)
print(response.json())
