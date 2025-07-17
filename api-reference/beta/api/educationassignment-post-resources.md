---
title: "Create educationAssignmentResource"
description: "Create an education assignment resource."
ms.localizationpriority: medium
author: "dipakboyed"
ms.subservice: "education"
doc_type: apiPageType
ms.date: 05/21/2024
---

# Create educationAssignmentResource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an [assignment resource](../resources/educationassignmentresource.md). Only teachers can perform this operation.

You can create the following types of assignment resources:

- [educationExcelResource](../resources/educationexcelresource.md)
- [educationFileResource](../resources/educationfileresource.md)
- [educationLinkResource](../resources/educationlinkresource.md)
- [educationMediaResource](../resources/educationmediaresource.md)
- [educationPowerPointResource](../resources/educationpowerpointresource.md)
- [educationSpeakerProgressResource](../resources/educationspeakerprogressresource.md)
- [educationTeamsAppResource](../resources/educationteamsappresource.md)
- [educationWordResource](../resources/educationwordresource.md)

Every resource has an **@odata.type** property to indicate which type of resource is being created. 

> [!IMPORTANT] 
> Before you can upload an assignment resource, you must [set up the resources folder](../api/educationassignment-setupresourcesfolder.md) for the [educationAssignment](../resources/educationassignment.md) to upload the files to.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignment_post_resources" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-post-resources-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{class-id}/assignments/{assignment-id}/resources
```
## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body
In the request body, supply a JSON representation of one of the following resource types: 

- [educationExcelResource](../resources/educationexcelresource.md)
- [educationFileResource](../resources/educationfileresource.md)
- [educationLinkResource](../resources/educationlinkresource.md)
- [educationMediaResource](../resources/educationmediaresource.md)
- [educationPowerPointResource](../resources/educationpowerpointresource.md)
- [educationSpeakerProgressResource](../resources/educationspeakerprogressresource.md)
- [educationTeamsAppResource](../resources/educationteamsappresource.md)
- [educationWordResource](../resources/educationwordresource.md)

>**Note:** You can't use this operation to create an [educationExternalResource](../resources/educationexternalresource.md).

## Response
If successful, this method returns a `201 Created` response code and an [educationAssignmentResource](../resources/educationassignmentresource.md) object in the response body.

This method also returns a `400 Bad Request` response code when an invalid request body is provided for the **educationSpeakerProgressResource** assignment resource in the following scenarios:

- The distributable resource attach limit is exceeded.
- No speaker coach setting or AI feedback is enabled.
- AI feedback is enabled, but the AI feedback criteria are null.
- AI feedback is enabled, but no settings are enabled in the AI feedback criteria.
- AI feedback is enabled, but **aiFeedbackCriteria.speechType** has an invalid value.
- AI feedback criteria have settings enabled, but AI feedback isn't enabled. 
- **aiFeedbackCriteria.speechType** is set, but AI feedback isn't enabled.
- **recordingTimeLimitInMinutes** isn't between 1 and 10 (inclusive).
- **maxRecordingAttempts** isn't between 0 and 10 (inclusive).

## Examples
### Example 1: Create an educationLinkResource
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["72a7baec-c3e9-4213-a850-f62de0adad5f","1618dfb0-3ff2-4edf-8d5c-b8f81df00e80"],  
  "name": "create_educationlinkresource_from_educationassignment"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources
Content-type: application/json

{
	"distributeForStudentWork": false,
	"resource": {
		"displayName": "Where the Wonders of Learning Never Cease | Wonderopolis",
		"link": "https://wonderopolis.org/",
		"thumbnailPreviewUrl": null,
		"@odata.type": "#microsoft.graph.educationLinkResource"
	}
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationlinkresource-from-educationassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationlinkresource-from-educationassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationlinkresource-from-educationassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationlinkresource-from-educationassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationlinkresource-from-educationassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationlinkresource-from-educationassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationlinkresource-from-educationassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationlinkresource-from-educationassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.


<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationLinkResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
	"@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/resources/$entity",
  "assignmentResourceUrl": null,  
	"id": "a2f95693-aea2-4d5e-a936-11ef390f8f20",
	"resource": {
		"@odata.type": "#microsoft.graph.educationLinkResource",
		"displayName": "Where the Wonders of Learning Never Cease | Wonderopolis",
		"createdDateTime": "2021-09-13T15:50:39.0017937Z",
		"lastModifiedDateTime": "2021-09-13T15:50:39.0017937Z",
		"link": "https://wonderopolis.org/",
		"createdBy": {
			"application": null,
			"device": null,
			"user": {
				"id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
				"displayName": null
			}
		},
		"lastModifiedBy": {
			"application": null,
			"device": null,
			"user": {
				"id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
				"displayName": null
			}
		}
	}
}
```

### Example 2: Create an educationWordResource
#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["72a7baec-c3e9-4213-a850-f62de0adad5f","1618dfb0-3ff2-4edf-8d5c-b8f81df00e80"],  
  "name": "create_educationwordresource_from_educationassignment"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources
Content-type: application/json

{
    "distributeForStudentWork":false,
    "resource": {
        "@odata.type": "microsoft.graph.educationWordResource",
        "displayName": "Issues and PR in guthub.docx",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!DPA6q59Tw0mtgmyXRUmrQRqBZTesG-lMkl1cBmvvMeUEWrOk89nKRpUEr4ZhNYBc/items/016XPCQEELISJB7NVNVBAK7V4UIF6Q27U2"
			
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationwordresource-from-educationassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationwordresource-from-educationassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationwordresource-from-educationassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationwordresource-from-educationassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationwordresource-from-educationassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationwordresource-from-educationassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationwordresource-from-educationassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationwordresource-from-educationassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.


<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationWordResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "d835503f-fd00-4840-b69c-7230d10e18b8",
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Issues and PR in guthub.docx",
        "createdDateTime": "2021-08-04T00:23:08.6269586Z",
        "lastModifiedDateTime": "2021-08-04T00:23:08.6269586Z",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!DPA6q59Tw0mtgmyXRUmrQRqBZTesG-lMkl1cBmvvMeUEWrOk89nKRpUEr4ZhNYBc/items/016XPCQEELISJB7NVNVBAK7V4UIF6Q27U2",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        }
    }
}
```

### Example 3: Create an educationFileResource
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["72a7baec-c3e9-4213-a850-f62de0adad5f","1618dfb0-3ff2-4edf-8d5c-b8f81df00e80"],  
  "name": "create_educationfileresource_from_educationassignment"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources
Content-type: application/json

{
	"distributeForStudentWork":false,
	"resource": {
		"displayName": "article.pdf",
		"file": {
			"odataid": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RPHKSP6THE4ORD2RQAR6MQLF26G"
		},
		"@odata.type": "#microsoft.graph.educationFileResource"
	}
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationfileresource-from-educationassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationfileresource-from-educationassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationfileresource-from-educationassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationfileresource-from-educationassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationfileresource-from-educationassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationfileresource-from-educationassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationfileresource-from-educationassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationfileresource-from-educationassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
																				 

>**Note:** The response object shown here might be shortened for readability.

																																																								 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationFileResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/resources/$entity",
    "distributeForStudentWork": false,
    "id": "eec7f642-9d9a-406f-bbae-4b3b2c12e273",
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "displayName": "article.pdf",
        "createdDateTime": "2021-07-16T23:41:53.9378423Z",
        "lastModifiedDateTime": "2021-07-16T23:41:53.9378423Z",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!DPA6q59Tw0mtgmyXRUmrQRqBZTesG-lMkl1cBmvvMeU6BLWBcGc_R6UgCKyYyTin/items/016XPCQEA5VVDIMU4BSFG3VBI37MPHZ3OE",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                "displayName": null
            }
        }
    }
}
```

### Example 4: Create an educationExcelResource
#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["72a7baec-c3e9-4213-a850-f62de0adad5f","1618dfb0-3ff2-4edf-8d5c-b8f81df00e80"], 
  "name": "create_educationexcelresource_from_educationassignment"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources
Content-type: application/json

{
    "distributeForStudentWork":false,
    "resource": {
        "@odata.type": "microsoft.graph.educationExcelResource",
        "displayName":"Graph Doc pages.xlsx",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RIR7PSV4JJSFJHKNPUVUWGPW4O2"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationexcelresource-from-educationassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationexcelresource-from-educationassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationexcelresource-from-educationassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationexcelresource-from-educationassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationexcelresource-from-educationassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationexcelresource-from-educationassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationexcelresource-from-educationassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationexcelresource-from-educationassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.


<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationExcelResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/resources/$entity",
    "assignmentResourceUrl": null,
	"id": "517b36a6-9ca2-4e7b-9748-3af25f5cd4fd",
	"resource": {
		"@odata.type": "#microsoft.graph.educationExcelResource",
		"displayName": "Graph Doc pages.xlsx",
		"createdDateTime": "2021-09-13T15:50:49.7107759Z",
		"lastModifiedDateTime": "2021-09-13T15:50:49.7107759Z",
		"fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RIR7PSV4JJSFJHKNPUVUWGPW4O2",
		"createdBy": {
			"application": null,
			"device": null,
			"user": {
				"id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
				"displayName": null
			}
		},
		"lastModifiedBy": {
			"application": null,
			"device": null,
			"user": {
				"id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
				"displayName": null
			}
		}
	}
}
```

### Example 5: Create an educationPowerPointResource
#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["72a7baec-c3e9-4213-a850-f62de0adad5f","1618dfb0-3ff2-4edf-8d5c-b8f81df00e80"], 
  "name": "create_educationpowerpointresource_from_educationassignment"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources
Content-type: application/json

{
    "distributeForStudentWork":false,
    "resource": {
        "@odata.type": "microsoft.graph.educationPowerPointResource",
        "displayName":"state diagram.pptx",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RN327OXRN6EVFE2Q5FRJZTN5EOJ"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationpowerpointresource-from-educationassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationpowerpointresource-from-educationassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationpowerpointresource-from-educationassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationpowerpointresource-from-educationassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationpowerpointresource-from-educationassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationpowerpointresource-from-educationassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationpowerpointresource-from-educationassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationpowerpointresource-from-educationassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.


<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationPowerPointResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/resources/$entity",
  "assignmentResourceUrl": null,
	"id": "3cb7968b-082f-4756-bdfb-782b4538cc0a",
	"resource": {
		"@odata.type": "#microsoft.graph.educationPowerPointResource",
    "displayName": "state diagram.pptx",
		"createdDateTime": "2021-09-13T15:50:58.5428117Z",
		"lastModifiedDateTime": "2021-09-13T15:50:58.5428117Z",
		"fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RN327OXRN6EVFE2Q5FRJZTN5EOJ",
		"createdBy": {
			"application": null,
			"device": null,
			"user": {
				"id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
				"displayName": null
			}
		},
		"lastModifiedBy": {
			"application": null,
			"device": null,
			"user": {
				"id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
				"displayName": null
			}
		}
	}
}
```

### Example 6: Create an educationMediaResource
#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["72a7baec-c3e9-4213-a850-f62de0adad5f","1618dfb0-3ff2-4edf-8d5c-b8f81df00e80"], 
  "name": "create_educationmediaresource_from_educationassignment"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources
Content-type: application/json

{
    "distributeForStudentWork":false,
    "resource": {
        "@odata.type": "microsoft.graph.educationMediaResource",
        "displayName":"homework example.PNG",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RMUWOKAGSJZ6BHINJVKNMOOJABF"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationmediaresource-from-educationassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationmediaresource-from-educationassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationmediaresource-from-educationassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationmediaresource-from-educationassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationmediaresource-from-educationassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationmediaresource-from-educationassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationmediaresource-from-educationassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationmediaresource-from-educationassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationMediaResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/resources/$entity",
    "distributeForStudentWork": false,
    "id": "30495bfd-c912-49d5-b3e1-92b60db3142a",
    "resource": {
        "@odata.type": "#microsoft.graph.educationMediaResource",
        "displayName": "homework example.PNG",
        "createdDateTime": "2021-09-16T00:09:32.2133895Z",
        "lastModifiedDateTime": "2021-09-16T00:09:32.2133895Z",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RMUWOKAGSJZ6BHINJVKNMOOJABF",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                "displayName": null
            }
        }
    }
}
```

### Example 7: Create an educationTeamsAppResource
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["72a7baec-c3e9-4213-a850-f62de0adad5f","1618dfb0-3ff2-4edf-8d5c-b8f81df00e80"], 
  "name": "create_educationTeamsAppResource_from_educationassignment"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources
Content-type: application/json

{
    "distributeForStudentWork": false,
    "resource": {
        "displayName": "Template - My Story",
        "appId": "6fbeb90c-3d55-4bd5-82c4-bfe824be4300",
        "appIconWebUrl": "https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/6fbeb90c-3d55-4bd5-82c4-bfe824be4300_largeImage.png?v=2.0.2",
        "teamsEmbeddedContentUrl": "https://app.api.edu.buncee.com/player/C7B0866C9B7E485EAE21AE14DBC3FD08?embed=1&render_slide_panel=1",
        "webUrl": "https://app.edu.buncee.com/buncee/C7B0866C9B7E485EAE21AE14DBC3FD08",
        "@odata.type": "#microsoft.graph.educationTeamsAppResource"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationteamsappresource-from-educationassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationteamsappresource-from-educationassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationteamsappresource-from-educationassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationteamsappresource-from-educationassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationteamsappresource-from-educationassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationteamsappresource-from-educationassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationteamsappresource-from-educationassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationteamsappresource-from-educationassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationTeamsAppResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/resources/$entity",
  "distributeForStudentWork": false,
  "id": "5bae19da-a720-4046-8af8-f56b9ae62d25",
  "resource": {
      "@odata.type": "#microsoft.graph.educationTeamsAppResource",
      "displayName": "Template - My Story",
      "createdDateTime": "2022-04-22T13:51:20.577384Z",
      "lastModifiedDateTime": "2022-04-22T13:51:20.577384Z",
      "appId": "6fbeb90c-3d55-4bd5-82c4-bfe824be4300",
      "appIconWebUrl": "https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/6fbeb90c-3d55-4bd5-82c4-bfe824be4300_largeImage.png?v=2.0.2",
      "teamsEmbeddedContentUrl": "https://app.api.edu.buncee.com/player/C7B0866C9B7E485EAE21AE14DBC3FD08?embed=1&render_slide_panel=1",
      "webUrl": "https://app.edu.buncee.com/buncee/C7B0866C9B7E485EAE21AE14DBC3FD08",
      "createdBy": {
          "application": null,
          "device": null,
          "user": {
              "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
              "displayName": null
          }
      },
      "lastModifiedBy": {
          "application": null,
          "device": null,
          "user": {
              "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
              "displayName": null
          }
      }
  }
}
```

### Example 8: Create an educationSpeakerProgressResource

The following example shows how to create an [educationSpeakerProgressResource](../resources/educationspeakerprogressresource.md) assignment resource.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationSpeakerProgressResource"
}
-->
``` http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19/resources
Content-Type: application/json

{
  "distributeForStudentWork": true,
  "resource": {
    "@odata.type": "microsoft.graph.educationSpeakerProgressResource",
    "displayName": "speakerProgressTestResource",
    "recordingTimeLimitInMinutes": 5,
    "showRehearsalReportToStudentBeforeMediaUpload": true,
    "maxRecordingAttempts": 1,
    "isVideoRequired": true,
    "isAiFeedbackEnabled": true,
    "presentationTitle": "speakerProgressTestResource",
    "spokenLanguageLocale": "en-US",
    "speakerCoachSettings": {
      "deliverySettings": {
        "isPronunciationEnabled": true
      }
    },
    "aiFeedbackCriteria": {
      "speechType": "informative",
      "aiFeedbackSettings": {
        "deliverySettings": {
          "isStyleEnabled": true
        }
      }
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationspeakerprogressresource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationspeakerprogressresource-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationspeakerprogressresource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationspeakerprogressresource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationspeakerprogressresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationspeakerprogressresource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationspeakerprogressresource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationspeakerprogressresource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSpeakerProgressResource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19')/resources/$entity",
  "distributeForStudentWork": true,
  "id": "af98a1e1-3393-4ee0-8bcc-8b5bb4598d1c",
  "resource": {
    "@odata.type": "#microsoft.graph.educationSpeakerProgressResource",
    "displayName": "speakerProgressTestResource",
    "createdDateTime": "2025-03-17T16:26:03.5530234Z",
    "lastModifiedDateTime": "2025-03-17T16:26:03.5530384Z",
    "recordingTimeLimitInMinutes": 5,
    "showRehearsalReportToStudentBeforeMediaUpload": true,
    "maxRecordingAttempts": 1,
    "isVideoRequired": true,
    "isAiFeedbackEnabled": true,
    "presentationTitle": "speakerProgressTestResource",
    "spokenLanguageLocale": "en-US",
    "createdBy": {
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
    },
    "speakerCoachSettings": {
      "deliverySettings": {
        "isPaceEnabled": false,
        "areFillerWordsEnabled": false,
        "isPitchEnabled": false,
        "isPronunciationEnabled": true
      },
      "contentSettings": {
        "isInclusivenessEnabled": false,
        "isRepetitiveLanguageEnabled": false
      },
      "audienceEngagementSettings": {
        "isBodyLanguageEnabled": false
      }
    },
    "aiFeedbackCriteria": {
      "speechType": "informative",
      "aiFeedbackSettings": {
        "deliverySettings": {
          "isLanguageUseEnabled": false,
          "areRhetoricalTechniquesEnabled": false,
          "isStyleEnabled": true
        },
        "contentSettings": {
          "isSpeechOrganizationEnabled": false,
          "isMessageClarityEnabled": false,
          "isQualityOfInformationEnabled": false
        },
        "audienceEngagementSettings": {
          "areEngagementStrategiesEnabled": false,
          "isEmotionalAndIntellectualAppealEnabled": false,
          "isCallToActionEnabled": false
        }
      }
    }
  }
}
```

## Related content

* [Status, transitions, and limitations for assignments and submissions](/graph/assignments-submissions-status-transition)
* [Upload files for education assignments and submissions](/graph/education-upload-resource-overview)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create educationAssignmentResource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


