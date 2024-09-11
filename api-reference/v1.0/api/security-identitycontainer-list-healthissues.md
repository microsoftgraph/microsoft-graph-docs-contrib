---
title: "List healthIssues"
description: "Get a list of the healthIssue objects and their properties."
author: "naalmog"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List healthIssues

Namespace: microsoft.graph.security



Get a list of [healthIssue](../resources/security-healthissue.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-identitycontainer-list-healthissues-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-identitycontainer-list-healthissues-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response: `$count`, `$filter`, `$skip`, `$top`, `$select`. For general information, see [OData query parameters](/graph/query-parameters).

The following examples show how to use optional query parameters.

### Get all open health alerts
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues?$filter=Status eq 'open'
```

### Get the top five open health alerts
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues?$filter=Status eq 'open'&$top=5
```

### Get open health alerts based on issue type
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues?$filter=Status eq 'open' and healthIssueType eq 'global'
GET /security/identities/healthIssues?$filter=Status eq 'open' and healthIssueType eq 'sensor'
```

### Get open health alerts based on severity
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues?$filter=Status eq 'open' and severity eq 'medium'
GET /security/identities/healthIssues?$filter=Status eq 'open' and severity eq 'low'
```

See open global health alerts that domain name \ sensor DNS name ends with spesific value (name=contoso.com)
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthissues?$filter=Status eq 'open' and healthIssueType eq 'global' and domainNames/any(s:endswith(s,'contoso.com'))
GET /security/identities/healthissues?$filter=Status eq 'open' and healthIssueType eq 'global' and sensorDNSNames/any(s:endswith(s,'contoso.com'))
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [healthIssue](../resources/security-healthissue.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_healthissue"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/identities/healthIssues
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.healthIssue)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.healthIssue",
      "id": "bf600aba-e975-0274-d332-c0f79dc75740",
      "displayName": "String",
      "healthIssueType": "String",
      "issueTypeId": "String",
      "severity": "String",
      "status": "String",
      "createdDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)",
      "domainNames": [
        "String"
      ],
      "sensorDNSNames": [
        "String"
      ],
      "description": "String",
      "recommendations": [
        "String"
      ],
      "recommendedActionCommands": [
        "String"
      ],
      "additionalInformation": [
        "String"
      ]
    }
  ]
}
```