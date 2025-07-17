---
title: "Create subjectRightsRequest"
description: "Create a new subjectRightsRequest object."
author: "skadam-msft"
ms.localizationpriority: medium
ms.subservice: "compliance"
doc_type: apiPageType
ms.date: 06/10/2024
---

# Create subjectRightsRequest
Namespace: microsoft.graph

Create a new [subjectRightsRequest](../resources/subjectRightsRequest.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "subjectrightsrequest_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/subjectrightsrequest-post-permissions.md)]

## HTTP request

[!INCLUDE [subject-rights-request-privacy-deprecate](../../includes/subject-rights-request-privacy-deprecate.md)]

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/subjectRightsRequests
POST /privacy/subjectRightsRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [subjectRightsRequest](../resources/subjectRightsRequest.md) object.

The following table lists the properties that are required when you create the [subjectRightsRequest](../resources/subjectRightsRequest.md).

|Property|Type|Description|
|:---|:---|:---|
|approvers|[user](../resources/user.md) collection|Collection of users who can approve the request. Currently only supported for requests of **type** `delete`.|
|collaborators|[user](../resources/user.md) collection|Collection of users who can collaborate on the request.|
|contentQuery|String|KQL based content query that should be used for search. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|dataSubject|[dataSubject](../resources/datasubject.md)|Contains the properties for data subject for the request.|
|dataSubjectType|dataSubjectType|Data subject type. Possible values are: `customer`, `currentEmployee`, `formerEmployee`, `prospectiveEmployee`, `student`, `teacher`, `faculty`, `other`, `unknownFutureValue`.|
|description|String|Description for the request.|
|displayName|String|Name of the request.|
|externalId|String|The external ID for the request that is immutable after creation and is used for tracking the request for the external system. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|includeAllVersions|Boolean|Include all versions of the documents. By default, the current copies of the documents are returned. If SharePoint sites have versioning enabled, including all versions automatically includes the historical copies of the documents. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|includeAuthoredContent|Boolean|Include content authored by the data subject. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|internalDueDateTime|DateTimeOffset|Internal due date that is used for tracking the request completion.|
|mailboxLocations|[subjectRightsRequestMailboxLocation](../resources/subjectrightsrequestmailboxlocation.md)|The mailbox locations that should be searched. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|pauseAfterEstimate|Boolean|Pause the request after estimate has finished. By default, the data estimate runs and then pauses, allowing you to preview results and then select the option to retrieve data in the UI. You can set this property to `false` if you want it to perform the estimate and then automatically begin with the retrieval of the content. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|regulations|String collection|One or more regulations for the request.|
|siteLocations|[subjectRightsRequestSiteLocation](../resources/subjectrightsrequestsitelocation.md)|The SharePoint and OneDrive site locations that should be searched. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|type|subjectRightsRequestType|Type of the request. Possible values are: `export`, `access`, `delete`, `tagForAction`, `unknownFutureValue`.|

## Response

If successful, this method returns a `201 Created` response code and a [subjectRightsRequest](../resources/subjectRightsRequest.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_subjectRightsRequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/privacy/subjectRightsRequests
Content-Type: application/json

{
  "type": "export",
  "contentQuery": "((\"Diego Siciliani\" OR \"Diego.Siciliani@contoso.com\") OR (participants:\"Diego.Siciliani@contoso.com\"))",
  "dataSubjectType": "customer",
  "externalId": "F53BF2DA-607D-412A-B568-FAA0F023AC0B",
  "displayName": "Export report for customer Id: 12345",
  "description": "This is a export request",
  "includeAllVersions": false,
  "includeAuthoredContent": true,
  "internalDueDateTime": "2022-07-20T22:42:28Z",
  "dataSubject": {
    "firstName": "Diego",
    "lastName": "Siciliani",
    "email": "Diego.Siciliani@contoso.com",
    "residency": "USA"
  },
  "mailboxLocations": null,
  "pauseAfterEstimate": true,
  "regulations": [
    "CCPA"
  ],
  "siteLocations": {
    "@odata.type": "microsoft.graph.subjectRightsRequestAllSiteLocation"
  },
  "approvers": [
    {
      "id": "1B761ED2-AA7E-4D82-9CF5-C09D737B6167"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-subjectrightsrequest-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-subjectrightsrequest-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-subjectrightsrequest-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-subjectrightsrequest-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-subjectrightsrequest-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-subjectrightsrequest-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-subjectrightsrequest-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-subjectrightsrequest-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subjectRightsRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "type": "export",
  "dataSubjectType": "customer",
  "regulations": [
    "CCPA"
  ],
  "displayName": "Export report for customer Id: 12345",
  "description": "This is a export request",
  "status": "active",
  "internalDueDateTime": "2022-07-20T22:42:28Z",
  "lastModifiedDateTime": "2022-05-10T22:42:28Z",
  "id": "CA084038-C5D2-493D-8DAB-23FC12393C76",
  "createdDateTime": "2022-05-10T22:42:28Z",
  "stages": [
    {
      "stage": "contentRetrieval",
      "status": "notStarted",
      "error": null
    },
    {
      "stage": "contentReview",
      "status": "notStarted",
      "error": null
    },
    {
      "stage": "generateReport",
      "status": "notStarted",
      "error": null
    },
    {
      "stage": "caseResolved",
      "status": "notStarted",
      "error": null
    }
  ],
  "createdBy": {
    "user": {
      "id": "1B761ED2-AA7E-4D82-9CF5-C09D737B6167",
      "displayName": "srradmin@contoso.com"
    }
  },
  "approvers": [
    {
      "id": "1B761ED2-AA7E-4D82-9CF5-C09D737B6167"
    }
  ],
  "collaborators": [
    {
      "id": "1B761ED2-AA7E-4D82-9CF5-C09D737B6167"
    }
  ],
  "lastModifiedBy": {
    "user": {
      "id": "1B761ED2-AA7E-4D82-9CF5-C09D737B6167",
      "displayName": "srradmin@contoso.com"
    }
  },
  "dataSubject": {
    "firstName": "Diego",
    "lastName": "Siciliani",
    "email": "Diego.Siciliani@contoso.com",
    "residency": "USA"
  },
  "team": {
    "id": "5484809c-fb5b-415a-afc6-da7ff601034e",
    "webUrl": "https://teams.contoso.com/teams/teamid"
  },
  "includeAllVersions": false,
  "pauseAfterEstimate": false,
  "includeAuthoredContent": false,
  "externalId": "F53BF2DA-607D-412A-B568-FAA0F023AC0B",
  "contentQuery": "((\"Diego Siciliani\" OR \"Diego.Siciliani@contoso.com\") OR (participants:\"Diego.Siciliani@contoso.com\"))",
  "mailboxLocations": null,
  "siteLocations": {
    "@odata.type": "microsoft.graph.subjectRightsRequestAllSiteLocation"
  }
}
```

