---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript
const options = {
  method: 'PATCH',
  headers: {
    'Authorization': `Bearer ${accessToken}`,
    'Content-Type': 'application/json'
  },
  body: JSON.stringify({
    "@odata.type": "#microsoft.graph.networkaccess.fqdnFilteringRule",
    "destinations": [
      { "@odata.type": "#microsoft.graph.networkaccess.fqdn", "value": "bing.com" },
      { "@odata.type": "#microsoft.graph.networkaccess.fqdn", "value": "*.bing.com" },
      { "@odata.type": "#microsoft.graph.networkaccess.fqdn", "value": "bing.co.uk" }
    ]
  })
};

fetch('https://graph.microsoft.com/beta/networkaccess/filteringPolicies/cccccccc-2222-3333-4444-dddddddddddd/policyRules/{policyRuleId}', options)
  .then(response => response.json())
  .then(data => console.log(data));
```
