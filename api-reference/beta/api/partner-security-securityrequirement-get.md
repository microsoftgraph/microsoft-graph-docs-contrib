---
title: "Get securityRequirement"
description: "Read the properties and relationships of a ecurityRequirement object."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: apiPageType
---

# Get securityRequirement

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [securityRequirement](../resources/partner-security-securityrequirement.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "partner-security-securityrequirement-get"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/partner-security-securityrequirement-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/partner/securityScore/requirements/{securityRequirementId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_securityrequirement"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/partner/securityScore/requirements/{securityRequirementId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.partner.security.securityRequirement"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.partner.security.securityRequirement",
    "id": "adc3e54c-8dde-f1cb-b92e-ffb989948282",
    "requirementType": "securityContactProvided",
    "complianceStatus": "compliant",
    "actionUrl": "https://aka.ms/partner-center-security-contact",
    "helpUrl": "https://aka.ms/partner-center-security-dashboard-security-contact",
    "score": "20",
    "maxScore": "20",
    "state": "active",
    "updatedDateTime": "2023-09-26T04:04:01.4261872Z"
  }
}
```

