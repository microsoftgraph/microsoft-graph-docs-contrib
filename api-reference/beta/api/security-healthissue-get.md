---
title: "Get healthIssue"
description: "Read the properties and relationships of a healthIssue object."
author: "amirfeldman"
ms.localizationpriority: medium
doc_type: apiPageType
ms.date: 03/20/2024
---

# Get healthIssue

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [healthIssue](../resources/security-healthissue.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|SecurityIdentitiesHealth.Read.All|SecurityIdentitiesHealth.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|SecurityIdentitiesHealth.Read.All|SecurityIdentitiesHealth.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues/{healthIssueId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.healthIssue](../resources/security-healthissue.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "sampleKeys": ["b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c"],
  "name": "get_security_healthissue"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/identities/healthIssues/b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.healthIssue",
  "name": "get_security_healthissue"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.healthIssue",
  "ID": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
  "displayName": "Directory Services Object Auditing is not configured as required",
  "healthIssueType": "Global",
  "issueTypeId": "1031",
  "severity": "medium",
  "status": "open",
  "createdDateTime": "2022-07-15T12:19:27.7211305Z",
  "lastModifiedDateTime": "2022-07-15T12:19:27.7211305Z",
  "domainNames": [
    "domain1.contoso.com",
    "domain2.contoso.com"
  ],
  "sensorDNSNames": [
    "DC1.domain1.contoso.com",
    "DC2.domain2.contoso.com"
  ],
  "description": "Directory Services Object Auditing is not configured as required on domain1.contoso.com",
  "recommendations": [
    "Please configure the Directory Services Object Auditing events according to the guidance as described in https://aka.ms/mdi/objectauditing"
  ],
  "recommendedActionCommands": [
    "Import-Module DefenderForIdentity",
    "Set-MDIConfiguration -Configuration DomainObjectAuditing -Mode Domain -Force"
  ],
  "additionalInformation": [
    "Descendant User Objects (Schema-Id-Guid: bf967aba-0de6-11d0-a285-00aa003049e2)",
    "Descendant Group Objects (Schema-Id-Guid: bf967a9c-0de6-11d0-a285-00aa003049e2)",
    "Descendant Computer Objects (Schema-Id-Guid: bf967a86-0de6-11d0-a285-00aa003049e2)",
    "Descendant msDS-GroupManagedServiceAccount Objects (Schema-Id-Guid: 7b8b558a-93a5-4af7-adca-c017e67f1057)",
    "Descendant msDS-ManagedServiceAccount Objects (Schema-Id-Guid: ce206244-5827-4a86-ba1c-1c0c386c1b64)"
  ]
}
```

