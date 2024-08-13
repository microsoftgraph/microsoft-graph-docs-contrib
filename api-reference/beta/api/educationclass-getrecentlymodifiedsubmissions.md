---
title: "educationClass: getRecentlyModifiedSubmissions"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# educationClass: getRecentlyModifiedSubmissions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "educationclass-getrecentlymodifiedsubmissions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/educationclass-getrecentlymodifiedsubmissions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /education/classes/{educationClassId}/getRecentlyModifiedSubmissions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [educationSubmission](../resources/educationsubmission.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "educationclassthis.getrecentlymodifiedsubmissions"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/classes/{educationClassId}/getRecentlyModifiedSubmissions
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.educationSubmission",
      "id": "String (identifier)",
      "recipient": {
        "@odata.type": "microsoft.graph.educationSubmissionRecipient"
      },
      "status": "String",
      "submittedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "submittedDateTime": "String (timestamp)",
      "unsubmittedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "unsubmittedDateTime": "String (timestamp)",
      "returnedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "returnedDateTime": "String (timestamp)",
      "reassignedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "reassignedDateTime": "String (timestamp)",
      "excusedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "excusedDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)",
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "resourcesFolderUrl": "String",
      "webUrl": "String"
    }
  ]
}
```

