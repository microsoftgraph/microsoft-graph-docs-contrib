---
title: "Get healthIssue"
description: "Read the properties and relationships of a healthIssue object."
author: "naalmog"
ms.subservice: "security"
doc_type: apiPageType
---

# Get healthIssue

Namespace: microsoft.graph.security



Read the properties and relationships of a [healthIssue](../resources/security-healthissue.md) object.
## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-healthissue-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-healthissue-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues/bf600aba-e975-0274-d332-c0f79dc75740
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response: `$select`. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.healthIssue](../resources/security-healthissue.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_healthissue"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/identities/healthIssues/bf600aba-e975-0274-d332-c0f79dc75740
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.healthIssue"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
      "@odata.type": "#microsoft.graph.security.healthIssue",
      "additionalInformation": ["Descendant User Objects (Schema-Id-Guid: bf967aba-0de6-11d0-a285-00aa003049e2)"],
      "createdDateTime": "2022-07-15T12:19:27.7211305Z",
      "description": "Directory Services Object Auditing is not configured as required on domain1.contoso.com",
      "displayName": "Directory Services Object Auditing is not configured as required",
      "domainNames": ["domain1.contoso.com", "domain2.contoso.com"],
      "healthIssueType": "Global",
      "id": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
      "issueTypeId": "1031",
      "lastModifiedDateTime": "2022-07-15T12:19:27.7211305Z",
      "recommendations": ["Please configure the Directory Services Object Auditing events according to the guidance as described in https://aka.ms/mdi/objectauditing"],
      "recommendedActionCommands": ["Import-Module DefenderForIdentity"],
      "sensorDNSNames": ["DC1.domain1.contoso.com", "DC2.domain2.contoso.com"],
      "severity": "medium"",
      "status": "open"
  }
}
```