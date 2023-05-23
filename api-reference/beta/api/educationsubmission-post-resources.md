---
title: "Create educationSubmissionResource"
description: "Add a resource to the submission resource list."
author: "dipakboyed"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Create educationSubmissionResource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a [educationSubmissionResource](../resources/educationsubmissionresource.md) to a submission resource list.

Only teachers and students can perform this operation.

The operation will not succeed if the **allowStudentsToAddResources** flag is not set to `true`.

To create a new file-based resource, upload the file to the resources folder associated with the submission. If the file doesn't exist or is not in that folder, the POST request will fail.

> [!IMPORTANT] 
> Before you can upload an assignment resource, you must [set up the resources folder](../api/educationassignment-setupresourcesfolder.md) for the [educationAssignment](../resources/educationassignment.md) to upload the files to.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite  |
|Delegated (personal Microsoft account) | Not supported.  |
|Application | Not supported. | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{class-id}/assignments/{assignment-id}/submissions/{submission-id}/resources
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, supply a JSON representation of the resource. The following are the supported types:

- [educationExcelResource](../resources/educationexcelresource.md)
- [educationFileResource](../resources/educationfileresource.md)
- [educationLinkResource](../resources/educationlinkresource.md)
- [educationPowerPointResource](../resources/educationpowerpointresource.md)
- [educationWordResource](../resources/educationwordresource.md) 
- [educationMediaResource](../resources/educationmediaresource.md).

>**Note:** The [educationExternalResource](../resources/educationexternalresource.md) is only an out resource, you can't POST a submission with it.

The `assignmentResourceUrl` isn't required in the request body, it's a read-only property.

## Response
If successful, this method returns a `201 Created` response code and an object according to the resource type in the response body.

## Examples
### Example 1: Create an educationWordResource
#### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationwordresource_from_educationsubmission"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/f4a941ff-9da6-4707-ba5b-0eae93cad0b4/assignments/3c77de7f-539b-49e1-9c96-1274f2f0ee3b/submissions/4af73d2b-6b9c-493f-0688-979087bed39b/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "microsoft.graph.educationWordResource",
        "displayName": "Report.docx",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!DPA6q59Tw0mtgmyXRUmrQRqBZTesG-lMkl1cBmvvMeUEWrOk89nKRpUEr4ZhNYBc/items/016XPCQEELISJB7NVNVBAK7V4UIF6Q27U2"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationwordresource-from-educationsubmission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationwordresource-from-educationsubmission-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationwordresource-from-educationsubmission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationwordresource-from-educationsubmission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationwordresource-from-educationsubmission-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationwordresource-from-educationsubmission-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response. 

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('f4a941ff-9da6-4707-ba5b-0eae93cad0b4')/assignments('3c77de7f-539b-49e1-9c96-1274f2f0ee3b')/submissions('4af73d2b-6b9c-493f-0688-979087bed39b')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "d835503f-fd00-4840-b69c-7230d10e18b8",
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Report.docx",
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

### Example 2: Create an educationLinkResource
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationlinkresource_from_educationsubmission"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources
Content-type: application/json

{
	"resource": {
		"displayName": "Wikipedia",
		"link": "https://en.wikipedia.org/wiki/Main_Page",
		"@odata.type": "#microsoft.graph.educationLinkResource"
	}
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationlinkresource-from-educationsubmission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationlinkresource-from-educationsubmission-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationlinkresource-from-educationsubmission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationlinkresource-from-educationsubmission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationlinkresource-from-educationsubmission-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationlinkresource-from-educationsubmission-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response. 

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
	"@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/submissions('da443246-384d-673b-32db-bdba9d7f2b51')/resources/$entity",
	"assignmentResourceUrl": null,
	"id": "88b441b0-cb05-45ab-a0f0-139f978e0993",
	"resource": {
		"@odata.type": "#microsoft.graph.educationLinkResource",
		"displayName": "Wikipedia",
		"createdDateTime": "2021-09-13T19:20:46.0648354Z",
		"lastModifiedDateTime": "2021-09-13T19:20:46.0648354Z",
		"link": "https://en.wikipedia.org/wiki/Main_Page",
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
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationfileresource_from_educationsubmission"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources
Content-type: application/json

{
	"resource": {
		"displayName": "_FTP_EDC-61424749-250820211136.pdf",
		"fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RL45XVPGDBRW5FLDR62Z5TCMGG3",
		"@odata.type": "#microsoft.graph.educationFileResource"
	}
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationfileresource-from-educationsubmission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationfileresource-from-educationsubmission-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationfileresource-from-educationsubmission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationfileresource-from-educationsubmission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationfileresource-from-educationsubmission-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationfileresource-from-educationsubmission-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response. 

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
	"@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/submissions('da443246-384d-673b-32db-bdba9d7f2b51')/resources/$entity",
	"assignmentResourceUrl": null,
	"id": "33cf3eb2-8a35-4f76-8f16-b2abc112d44f",
	"resource": {
		"@odata.type": "#microsoft.graph.educationFileResource",
		"displayName": "_FTP_EDC-61424749-250820211136.pdf",
		"createdDateTime": "2021-09-13T19:23:04.5049139Z",
		"lastModifiedDateTime": "2021-09-13T19:23:04.5049139Z",
		"fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RL45XVPGDBRW5FLDR62Z5TCMGG3",
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

### Example 4: Create an educationExcelResource
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationexcelresource_from_educationsubmission"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources
Content-type: application/json

{
	"resource": {
		"@odata.type": "#microsoft.graph.educationExcelResource",
		"displayName": "userAgeGroup QueryParameter Test.xlsx",
		"fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RONPUDM2CZKNRF3TGHYUM7Z64WE"
	}
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationexcelresource-from-educationsubmission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationexcelresource-from-educationsubmission-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationexcelresource-from-educationsubmission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationexcelresource-from-educationsubmission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationexcelresource-from-educationsubmission-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationexcelresource-from-educationsubmission-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response. 

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
	"@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/submissions('da443246-384d-673b-32db-bdba9d7f2b51')/resources/$entity",
	"assignmentResourceUrl": null,
	"id": "c36626ba-9864-4f3a-8d6f-7104f62df605",
	"resource": {
		"@odata.type": "#microsoft.graph.educationExcelResource",
		"displayName": "userAgeGroup QueryParameter Test.xlsx",
		"createdDateTime": "2021-09-13T19:23:58.3925618Z",
		"lastModifiedDateTime": "2021-09-13T19:23:58.3925618Z",
		"fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RONPUDM2CZKNRF3TGHYUM7Z64WE",
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

### Example 5: Create an educationPowerPointResource
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationpowerpointresource_from_educationsubmission"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources
Content-type: application/json

{
	"resource": {
		"@odata.type": "#microsoft.graph.educationPowerPointResource",
		"displayName": "state diagram.pptx",
		"fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RN3MHWWM7BNXJD2UD5OMRFEDKN2"
	}
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationpowerpointresource-from-educationsubmission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationpowerpointresource-from-educationsubmission-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationpowerpointresource-from-educationsubmission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationpowerpointresource-from-educationsubmission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationpowerpointresource-from-educationsubmission-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationpowerpointresource-from-educationsubmission-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response. 

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
	"@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/submissions('da443246-384d-673b-32db-bdba9d7f2b51')/resources/$entity",
	"assignmentResourceUrl": null,
	"id": "e19bd829-17ee-4483-88d0-f62b406f367c",
	"resource": {
		"@odata.type": "#microsoft.graph.educationPowerPointResource",
		"displayName": "state diagram.pptx",
		"createdDateTime": "2021-09-13T19:24:38.4706263Z",
		"lastModifiedDateTime": "2021-09-13T19:24:38.4706263Z",
		"fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RN3MHWWM7BNXJD2UD5OMRFEDKN2",
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

### Example 6: Create an educationMediaResource
#### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["72a7baec-c3e9-4213-a850-f62de0adad5f","1618dfb0-3ff2-4edf-8d5c-b8f81df00e80","da443246-384d-673b-32db-bdba9d7f2b51"], 
  "name": "create_educationmediaresource_from_educationsubmission"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources
Content-type: application/json

{
	"resource": {
		"displayName": "category.jpg",
		"fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RK2WLKUUBAA4ZBKXNBL6QFC2TKG",
		"@odata.type": "#microsoft.graph.educationMediaResource"
	}
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationmediaresource-from-educationsubmission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationmediaresource-from-educationsubmission-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationmediaresource-from-educationsubmission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationmediaresource-from-educationsubmission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationmediaresource-from-educationsubmission-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationmediaresource-from-educationsubmission-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response. 

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/submissions('da443246-384d-673b-32db-bdba9d7f2b51')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "31f2c67a-6df1-4a7f-b4c5-311fe15c873a",
    "resource": {
        "@odata.type": "#microsoft.graph.educationMediaResource",
        "displayName": "category.jpg",
        "createdDateTime": "2021-09-16T19:07:59.4982929Z",
        "lastModifiedDateTime": "2021-09-16T19:07:59.4982929Z",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RK2WLKUUBAA4ZBKXNBL6QFC2TKG",
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

## See also

* [States, transitions, and limitations for assignments and submissions](/graph/assignments-submissions-states-transition)
* [Upload files for education assignments and submissions](/graph/education-upload-resource-overview)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create educationSubmissionResource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


