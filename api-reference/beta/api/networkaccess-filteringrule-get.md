---
title: "Get filteringRule"
description: "Read the properties and relationships of a microsoft.graph.networkaccess.filteringRule object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Get filteringRule
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET 
/networkaccess/filteringPolicies/{filteringPoliciesId}/policyRules/{policyRulesId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_filteringrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/filteringPolicies/ac253559-37a0-4f72-b666-103420b94e38/policyRules/0823cb1e-644b-4585-80db-1c1055894ec7
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.filteringRule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
	"@odata.type": "#microsoft.graph.networkaccess.fqdnFilteringRule",
    "id": "f76a8f4d-7e9f-4aa0-ae1a-e88330c5634c",
    "name": "Contoso",
    "ruleType": "fqdn",
		"destinations": [
			{
				"@odata.type": "#microsoft.graph.networkaccess.fqdn",
                "value": "www.contoso.com"
            }
          ]
}
```

