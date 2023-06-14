---
title: "Get forwardingRule"
description: "Read the properties of forwarding Rule."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Get forwardingRule
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

To read the configuration, the calling user must also be in one of the following [Azure AD roles](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference):

* Global reader
* Global Secure Access Administrator
* Security Administrator
* Global Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/forwardingPolicies/{id}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_forwardingrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/forwardingPolicies/{policyId}/policyRules/{ruleId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.forwardingRule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/forwardingPolicies('81e6666b-dcf3-4ee6-9212-adb12df18dab')/policyRules/$entity",
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
}
```


