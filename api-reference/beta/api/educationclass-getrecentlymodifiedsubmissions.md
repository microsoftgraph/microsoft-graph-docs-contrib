---
title: "Get recently modified educationSubmissions"
description: "Retrieve recently modified submissions. A submission object represents a student's work for an assignment."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
---

# Get recently modified educationSubmissions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve recently modified submissions up to maximum of last 7 days. Only teachers and applications with application permissions can perform this operation.

A **submission** object represents a student's work for an [assignment](../resources/educationassignment.md). Resources associated with the **submission** represent their work.

A teacher or application with application permissions has full access to all **submissions**.

The grade and feedback from a teacher are part of the [educationOutcome](../resources/educationoutcome.md) associated with this object. Only teachers or applications with application permissions can add or change grades and feedback. Students will not see the grade or feedback until the **assignment** has been released.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationclass_get_recentlymodifiedsubmissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationclass-getrecentlymodifiedsubmissions-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{class-id}/getRecentlyModifiedSubmissions
```

## Optional query parameters
This method supports the `$orderby`, `$top`, `$filter`, `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

You can use `$orderby` for the following property of [educationClass](../resources/educationclass.md) resource `lastModifiedDateTime`.

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [educationSubmission](../resources/educationsubmission.md) objects in the response body.

If invalid `$orderby` property is specified, the method returns a `400` error message.

```http
HTTP/1.1 403 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20143",
        "message": "The OData query is invalid. $orderby clause is only supported for these properties : (lastModifiedDateTime).",
        "innerError": {
            "date": "2024-08-27T13:04:10",
            "request-id": "218ae0dc-664c-4928-b4e1-f3b37c27c472",
            "client-request-id": "ed8c66ed-fd50-d7ec-d989-5a92140999c1"
        }
    }
}
```
If invalid `$filter` property is specified, the method returns a `400` error message.

```http
HTTP/1.1 403 Bad Request
Content-type: application/json

{
    "error": {
        "code": "BadRequest",
        "message": "Invalid filter clause: The $filter expression must evaluate to a single boolean value.",
        "innerError": {
            "date": "2024-08-27T13:05:11",
            "request-id": "31233bf3-c442-4a8d-a1ff-56c665239e25",
            "client-request-id": "30f9e18f-f311-741b-bf48-23fd4feecdb9"
        }
    }
}
```

## Examples
### Example 1: Get recently modified submissions

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/bf1f1963-05f6-4cba-903c-5892b4ce3bd7/getRecentlyModifiedSubmissions
```

#### Response
The following example shows the response.

>**Notes:** 
>The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.educationSubmission)",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/microsoft.graph.getRecentlyModifiedSubmissions?$select=excusedBy,excusedDateTime",
    "value": [
        {
            "status": "returned",
            "submittedDateTime": null,
            "unsubmittedDateTime": "2024-08-14T05:48:30.9345815Z",
            "returnedDateTime": "2024-08-14T05:47:41.4128921Z",
            "reassignedDateTime": "2024-08-14T05:47:18.3007671Z",
            "excusedDateTime": "2024-08-14T05:47:41.4128921Z",
            "lastModifiedDateTime": "2024-08-14T06:37:17.9779374Z",
            "resourcesFolderUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%22bf1f1963-05f6-4cba-903c-5892b4ce3bd7%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22db8e6b0b-dba4-4c69-81b2-9ba7313c0b7a%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%224bca096a-7de3-8675-5e86-2fa149923860%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "id": "4bca096a-7de3-8675-5e86-2fa149923860",
            "recipient": {
                "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
                "userId": "61243ddb-6f39-499d-b232-9fa8cef26b3a"
            },
            "submittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "61243ddb-6f39-499d-b232-9fa8cef26b3a",
                    "displayName": null
                }
            },
            "unsubmittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "returnedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "reassignedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "excusedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            }
        }
    ]
}
```

### Example 2: Get recently modified submissions with `$expand` option

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_expand"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getRecentlyModifiedSubmissions?$expand=submissions
```

#### Response
The following example shows the response.

>**Notes:** 
>The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.educationSubmission)",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/microsoft.graph.getRecentlyModifiedSubmissions?$select=excusedBy,excusedDateTime",
    "value": [
        {
            "status": "returned",
            "submittedDateTime": "2024-08-26T16:01:35.180033Z",
            "unsubmittedDateTime": null,
            "returnedDateTime": "2024-08-26T16:01:43.988604Z",
            "reassignedDateTime": "2024-08-26T16:01:43.988604Z",
            "excusedDateTime": null,
            "lastModifiedDateTime": "2024-08-26T16:01:48.0623777Z",
            "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ09U1eIUFaoRYA01ZbdVzuK/items/01VANVJQ4HVKYQ3PAFDBD2WGG6QFHGCISY",
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%223d2fcfd4-cb6a-4e31-aa63-16ca865e9014%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22a509cfeb-6ea1-a19e-272e-7c3c43b4f200%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "id": "a509cfeb-6ea1-a19e-272e-7c3c43b4f200",
            "recipient": {
                "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
                "userId": "61243ddb-6f39-499d-b232-9fa8cef26b3a"
            },
            "submittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "unsubmittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "returnedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "reassignedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "excusedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "outcomes": [
                {
                    "@odata.type": "#microsoft.graph.educationFeedbackOutcome",
                    "lastModifiedDateTime": null,
                    "id": "ca05367a-b292-42d5-aff7-5d279feeace8",
                    "lastModifiedBy": null,
                    "feedback": null,
                    "publishedFeedback": null
                },
                {
                    "@odata.type": "#microsoft.graph.educationPointsOutcome",
                    "lastModifiedDateTime": "2024-08-26T16:01:18.6193774Z",
                    "id": "ea1351f6-ba33-4940-b2cb-6a7254af2dc8",
                    "lastModifiedBy": {
                        "application": null,
                        "device": null,
                        "user": {
                            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                            "displayName": null
                        }
                    },
                    "points": {
                        "gradedDateTime": "2024-08-26T16:01:18.6193774Z",
                        "points": 75,
                        "gradedBy": {
                            "application": null,
                            "device": null,
                            "user": {
                                "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                                "displayName": null
                            }
                        }
                    },
                    "publishedPoints": {
                        "gradedDateTime": "2024-08-26T16:01:18.6193774Z",
                        "points": 75,
                        "gradedBy": {
                            "application": null,
                            "device": null,
                            "user": {
                                "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                                "displayName": null
                            }
                        }
                    }
                }
            ]
        }
    ]
}
```

### Example 3: Get recently modified submissions with `$filter` option

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_filter"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/bf1f1963-05f6-4cba-903c-5892b4ce3bd7/getRecentlyModifiedSubmissions?$filter=status eq 'working'
```

#### Response
The following example shows the response.

>**Notes:** 
>The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.educationSubmission)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getRecentlyModifiedSubmissions?$filter=status+eq+%27working%27&$skiptoken=eyJJbm5lclNraXBUb2tlbiI6Ik15WlJWa1pDVVZWR1FsRlZSa1phTVd4Q1VWVkdRbEZWUmtKU1JXeENVVlZHUWxWWFZscE9SM040U3pCc1RGWlRjM2RTTUhkNlZGVlJlRlJzUW1oa2VqQTUifQ%3d%3d",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/microsoft.graph.getRecentlyModifiedSubmissions?$select=excusedBy,excusedDateTime",
    "value": [
        {
            "status": "working",
            "submittedDateTime": null,
            "unsubmittedDateTime": null,
            "returnedDateTime": null,
            "reassignedDateTime": null,
            "excusedDateTime": null,
            "lastModifiedDateTime": "2024-08-26T15:57:23.5476513Z",
            "resourcesFolderUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%223d2fcfd4-cb6a-4e31-aa63-16ca865e9014%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%227e2e0656-2bf4-1f95-b4b0-967f516340cd%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "id": "7e2e0656-2bf4-1f95-b4b0-967f516340cd",
            "recipient": {
                "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
                "userId": "80cefd93-8d88-40e2-b5d3-67898383e226"
            },
            "submittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                    "displayName": null
                }
            },
            "unsubmittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "returnedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "reassignedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "excusedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "5e3ce6c0-2b1f-4285-8d4b-75ee78787346",
                    "displayName": null
                }
            }
        }
    ]
}
```

### Example 4: Get recently modified submissions with `$orderby` option

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_orderby"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/bf1f1963-05f6-4cba-903c-5892b4ce3bd7/getRecentlyModifiedSubmissions?$orderby=lastModifiedDateTime
```

#### Response
The following example shows the response.

>**Notes:** 
>The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.educationSubmission)",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/microsoft.graph.getRecentlyModifiedSubmissions?$select=excusedBy,excusedDateTime",
    "value": [
        {
            "status": "working",
            "submittedDateTime": null,
            "unsubmittedDateTime": null,
            "returnedDateTime": null,
            "reassignedDateTime": null,
            "excusedDateTime": null,
            "lastModifiedDateTime": "2024-08-26T15:57:23.2992323Z",
            "resourcesFolderUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%223d2fcfd4-cb6a-4e31-aa63-16ca865e9014%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%223b03a85c-6021-8e5c-fc07-c4ac6d3506d3%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "id": "3b03a85c-6021-8e5c-fc07-c4ac6d3506d3",
            "recipient": {
                "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
                "userId": "2d20b7fc-43bd-459c-81e0-5eb4aa20d5b5"
            },
            "submittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "2d20b7fc-43bd-459c-81e0-5eb4aa20d5b5",
                    "displayName": null
                }
            },
            "unsubmittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "returnedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "reassignedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "excusedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "5e3ce6c0-2b1f-4285-8d4b-75ee78787346",
                    "displayName": null
                }
            }
        }
    ]
}
```

### Example 5: Get recently modified submissions with `$select` option

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_select"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/bf1f1963-05f6-4cba-903c-5892b4ce3bd7/getRecentlyModifiedSubmissions?$select=excusedDateTime
```

#### Response
The following example shows the response.

>**Notes:** 
>The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.educationSubmission)",
    "value": [
        {
            "excusedDateTime": "2024-08-26T16:00:17.535348Z"
        },
        {
            "excusedDateTime": "2024-08-26T16:00:17.4698345Z"
        },
        {
            "excusedDateTime": null
        }
    ]
}
```

### Example 6: Get recently modified submissions with `$top` option

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_top"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/bf1f1963-05f6-4cba-903c-5892b4ce3bd7/getRecentlyModifiedSubmissions?$top=1
```

#### Response
The following example shows the response.

>**Notes:** 
>The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.educationSubmission)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getRecentlyModifiedSubmissions?$top=5&$skiptoken=eyJJbm5lclNraXBUb2tlbiI6Ik15WlJWa1pDVVZWR1FsRlZSa1JSVlVaQ1VWVkdRbEZWUmtKUlZWcENVVlZHUWxZeFdsZFZhekZyWTFWS1VtRjZTVEJVTTFJeFZGZEdWbFJFV21oa2VqQTUifQ%3d%3d",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/microsoft.graph.getRecentlyModifiedSubmissions?$select=excusedBy,excusedDateTime",
    "value": [
        {
            "status": "returned",
            "submittedDateTime": "2024-08-26T16:01:35.180033Z",
            "unsubmittedDateTime": null,
            "returnedDateTime": "2024-08-26T16:01:43.988604Z",
            "reassignedDateTime": "2024-08-26T16:01:43.988604Z",
            "excusedDateTime": null,
            "lastModifiedDateTime": "2024-08-26T16:01:48.0623777Z",
            "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ09U1eIUFaoRYA01ZbdVzuK/items/01VANVJQ4HVKYQ3PAFDBD2WGG6QFHGCISY",
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%223d2fcfd4-cb6a-4e31-aa63-16ca865e9014%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22a509cfeb-6ea1-a19e-272e-7c3c43b4f200%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "id": "a509cfeb-6ea1-a19e-272e-7c3c43b4f200",
            "recipient": {
                "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
                "userId": "61243ddb-6f39-499d-b232-9fa8cef26b3a"
            },
            "submittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "unsubmittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "returnedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "reassignedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "excusedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            }
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-08-18 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get educationSubmission recentlymodifiedsubmission",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
