---
title: "Onboard tenant"
description: "Initiates the onboarding process for a tenant. By making a POST request to this operation, administrators can begin the onboarding process for a specific tenant, allowing them to set up and configure the necessary settings and resources required for the tenant to become fully operational."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create tenantStatus
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

To make changes, the calling user must also be in one of the following [Azure AD roles](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference):

* Global Secure Access Administrator
* Security Administrator
* Global Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST networkAccess/microsoft.graph.networkaccess.onboard
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body


## Response

If successful, this method returns a `204 No Content` response code and a [microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_tenantstatus_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.networkaccess.tenantStatus not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.tenantStatus",
  "onboardingStatus": "String",
  "onboardingErrorMessage": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.tenantStatus"
}
-->
``` http
HTTP/1.1 204 No Content
```

