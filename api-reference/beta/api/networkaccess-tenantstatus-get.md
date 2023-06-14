---
title: "Get tenantStatus"
description: "Represents a top-level entity within the networkAccess context that indicates the onboarding status of a tenant. The TenantStatus object provides information about the current status of a tenant's onboarding process, indicating whether it has been completed or is still in progress."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Get tenantStatus
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a top-level entity within the networkAccess context that indicates the onboarding status of a tenant. The TenantStatus object provides information about the current status of a tenant's onboarding process, indicating whether it has been completed or is still in progress

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

To read the configuration, the calling user must also be in one of the following [Azure AD roles](https://learn.microsoft.com/azure/active-directory/roles/permissions-reference):

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
GET /networkAccess/tenantStatus
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_tenantstatus"
}
-->
``` http
GET /networkAccess/tenantStatus
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
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/tenantStatus/$entity",
    "onboardingStatus": "onboarded",
    "onboardingErrorMessage": null
}
```

