---
title: "List subjectRightsRequests"
description: "Get a list of subject rights requests and their properties."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# List subjectRightsRequests
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [subjectRightsRequest](../resources/subjectRightsRequest.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "subjectrightsrequest_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/subjectrightsrequest-list-permissions.md)]

## HTTP request

[!INCLUDE [subject-rights-request-privacy-deprecate](../../includes/subject-rights-request-privacy-deprecate.md)]

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/subjectRightsRequests
GET /privacy/subjectRightsRequests
```

## Optional query parameters

This method doesn't support the [OData query parameters](/graph/query-parameters) to help customize the response.


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [subjectRightsRequest](../resources/subjectRightsRequest.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_subjectRightsRequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/privacy/subjectRightsRequests
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-subjectrightsrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-subjectrightsrequest-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-subjectrightsrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-subjectrightsrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-subjectrightsrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-subjectrightsrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-subjectrightsrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-subjectrightsrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.subjectRightsRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "type": "export",
            "dataSubjectType": "customer",
            "regulations": [
                "GDPR"
            ],
            "displayName": "Export request for Monica Thompson",
            "description": "This is a export request",
            "status": "active",
            "internalDueDateTime": "2022-06-20T22:42:28Z",
            "lastModifiedDateTime": "2022-04-20T22:42:28Z",
            "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
            "createdDateTime": "2022-04-19T22:42:28Z",
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
            "lastModifiedBy": {
                "user": {
                    "id": "1B761ED2-AA7E-4D82-9CF5-C09D737B6167",
                    "displayName": "srradmin@contoso.com"
                }
            },
            "dataSubject": {
                "firstName": "Monica",
                "lastName": "Thompson",
                "email": "Monica.Thompson@contoso.com",
                "residency": "USA"
            },
            "team": {
                "id": "5484809c-fb5b-415a-afc6-da7ff601034e",
                "webUrl": "https://teams.contoso.com/teams/teamid"
            },
            "includeAllVersions": false,
            "pauseAfterEstimate": true,
            "includeAuthoredContent": true,
            "externalId": null,
            "contentQuery": "(('Monica Thompson' OR 'Monica.Thompson@contoso.com') OR (participants=Monica.Thompson@contoso.com))",
            "mailboxLocations": null,
            "siteLocations": {
                "@odata.type": "microsoft.graph.subjectRightsRequestAllSiteLocation"
            }
        },
        {
            "type": "export",
            "dataSubjectType": "customer",
            "regulations": [
                "GDPR"
            ],
            "displayName": "Export request for Alex.Wilber",
            "description": "This is a export request",
            "status": "active",
            "internalDueDateTime": "2022-06-20T22:42:28Z",
            "lastModifiedDateTime": "2022-04-20T22:42:28Z",
            "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
            "createdDateTime": "2022-04-19T22:42:28Z",
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
            "lastModifiedBy": {
                "user": {
                    "id": "1B761ED2-AA7E-4D82-9CF5-C09D737B6167",
                    "displayName": "srradmin@contoso.com"
                }
            },
            "dataSubject": {
                "firstName": "Alex",
                "lastName": "Wilber",
                "email": "Alex.Wilber@contoso.com"
            },
            "team": {
                "id": "5484809c-fb5b-415a-afc6-da7ff601034e",
                "webUrl": "https://teams.contoso.com/teams/teamid"
            },
            "includeAllVersions": false,
            "pauseAfterEstimate": true,
            "includeAuthoredContent": true,
            "externalId": null,
            "contentQuery": "(('Alex Wilber' OR 'Alex.Wilber@contoso.com') OR (participants=Alex.Wilber@contoso.com))",
            "mailboxLocations": {
                "@odata.type": "microsoft.graph.subjectRightsRequestAllMailBoxLocation"
            },
            "siteLocations": {
                "@odata.type": "microsoft.graph.subjectRightsRequestAllSiteLocation"
            }
        }
    ]
}
```

