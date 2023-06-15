---
title: "List forwardingRules"
description: "Return a list of forwarding rules associated with a specific forwarding policy within a tenant"
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List forwardingRules
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Return a list of forwarding rules associated with a specific forwarding policy within a tenant

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/forwardingPolicies/{policyId}/policyRules
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [forwardingRule](../resources/networkaccess-forwardingrule.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_forwardingrule"
}
-->
``` http
GET /networkAccess/forwardingPolicies/{policyId}/policyRules
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.forwardingRule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/forwardingPolicies('81e6666b-dcf3-4ee6-9212-adb12df18dab')/policyRules",
    "value": [
        {
            "@odata.type": "#microsoft.graph.networkaccess.m365ForwardingRule",
            "id": "070ad25a-bd46-4822-93b9-584088279aa2",
            "name": "M365 Exchange Fqdn rule 1",
            "ruleType": "fqdn",
            "action": "forward",
            "protocol": "tcp",
            "ports": [
                "80",
                "443"
            ],
            "category": "optimized",
            "destinations": [
                {
                    "@odata.type": "#microsoft.graph.networkaccess.fqdn",
                    "value": "outlook.office.com"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.fqdn",
                    "value": "outlook.office365.com"
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.networkaccess.m365ForwardingRule",
            "id": "a5dc1dff-a65f-4231-a68a-a093722ee628",
            "name": "M365 Exchange IpSubnet rule 1",
            "ruleType": "ipSubnet",
            "action": "forward",
            "protocol": "tcp",
            "ports": [
                "80",
                "443"
            ],
            "category": "optimized",
            "destinations": [
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "13.107.6.152/31"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "13.107.18.10/31"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "13.107.128.0/22"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "23.103.160.0/20"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "40.96.0.0/13"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "40.104.0.0/15"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "52.96.0.0/14"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "131.253.33.215/32"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "132.245.0.0/16"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "150.171.32.0/22"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "204.79.197.215/32"
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.networkaccess.m365ForwardingRule",
            "id": "b5f4815c-f17c-45db-aad4-0016c226771c",
            "name": "M365 Exchange Fqdn rule 1",
            "ruleType": "fqdn",
            "action": "forward",
            "protocol": "tcp",
            "ports": [
                "80",
                "443"
            ],
            "category": "default",
            "destinations": [
                {
                    "@odata.type": "#microsoft.graph.networkaccess.fqdn",
                    "value": "*.outlook.com"
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.networkaccess.m365ForwardingRule",
            "id": "27fe3a0f-b45c-4c20-b874-a5fbf9184617",
            "name": "M365 Exchange Fqdn rule 1",
            "ruleType": "fqdn",
            "action": "forward",
            "protocol": "tcp",
            "ports": [
                "443"
            ],
            "category": "allow",
            "destinations": [
                {
                    "@odata.type": "#microsoft.graph.networkaccess.fqdn",
                    "value": "*.protection.outlook.com"
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.networkaccess.m365ForwardingRule",
            "id": "03d4b42a-009c-458c-bdc9-10db84c257fa",
            "name": "M365 Exchange IpSubnet rule 1",
            "ruleType": "ipSubnet",
            "action": "forward",
            "protocol": "tcp",
            "ports": [
                "443"
            ],
            "category": "allow",
            "destinations": [
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "40.92.0.0/15"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "40.107.0.0/16"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "52.100.0.0/14"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "52.238.78.88/32"
                },
                {
                    "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
                    "value": "104.47.0.0/17"
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.networkaccess.m365ForwardingRule",
            "id": "ad528aa2-95db-4982-9950-9e422659261b",
            "name": "M365 Exchange Fqdn rule 1",
            "ruleType": "fqdn",
            "action": "forward",
            "protocol": "tcp",
            "ports": [
                "80",
                "443"
            ],
            "category": "default",
            "destinations": [
                {
                    "@odata.type": "#microsoft.graph.networkaccess.fqdn",
                    "value": "autodiscover.*.onmicrosoft.com"
                }
            ]
        }
    ]
}
```


