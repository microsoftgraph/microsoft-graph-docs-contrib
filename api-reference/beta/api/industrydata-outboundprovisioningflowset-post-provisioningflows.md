---
title: "Create provisioningFlow"
description: "Create a new provisioningFlow object."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# Create provisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [provisioningFlow](../resources/industrydata-provisioningflow.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-outboundprovisioningflowset-post-provisioningflows-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/industrydata-outboundprovisioningflowset-post-provisioningflows-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /external/industryData/outboundProvisioningFlowSets/{id}/provisioningFlows
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [provisioningFlow](../resources/industrydata-provisioningflow.md) object.

Any of the following provisioning flows are valid:

- [administrativeUnitProvisioningFlow](../resources/industrydata-administrativeUnitProvisioningFlow.md)
- [classGroupProvisioningFlow](../resources/industrydata-classGroupProvisioningFlow.md)
- [securityGroupProvisioningFlow](../resources/industrydata-securityGroupProvisioningFlow.md)
- [userProvisioningFlow](../resources/industrydata-userProvisioningFlow.md)

## Response

If successful, this method returns a `201 Created` response code and a [provisioningFlow](../resources/industrydata-provisioningflow.md) object in the response body.

## Examples

### Example 1: Create an administrativeUnitProvisioningFlow

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_adminunit"
}-->

```http
POST https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",
  "creationOptions":
  {
    "createBasedOnOrg": true,
    "createBasedOnOrgPlusroleGroup": true
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-adminunit-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/post-adminunit-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-adminunit-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-adminunit-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-adminunit-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-adminunit-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-adminunit-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.provisioningFlow"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets('9ab41255-5364-4c53-e15c-08dc4ab6ee03')/provisioningFlows/$entity",
    "@odata.type": "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",
    "id": "f66e97ad-0870-46e0-3ff3-08dc49dccdc9",
    "createdDateTime": "2024-03-22T21:28:02.7164229Z",
    "lastModifiedDateTime": "2024-03-22T21:28:02.7164229Z",
    "readinessStatus": "notReady",
    "creationOptions": {
        "createBasedOnOrg": true,
        "createBasedOnOrgPlusRoleGroup": true
    }
}
```

### Example 2: Create a classGroupProvisioningFlow

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_classgroup"
}-->

```http
POST https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.industryData.classGroupProvisioningFlow",
    "configuration": {
        "@odata.type": "#microsoft.graph.industryData.classGroupConfiguration",
        "additionalAttributes": [
            "courseTitle",
            "courseCode",
            "courseSubject",
            "courseGradeLevel",
            "courseExternalId",
            "academicSessionTitle",
            "academicSessionExternalId"
        ],
        "additionalOptions": {
            "@odata.type": "#microsoft.graph.industryData.additionalClassGroupOptions",
            "createTeam": true,
            "writeDisplayNameOnCreateOnly": true
        },
        "enrollmentMappings": {
            "@odata.type": "#microsoft.graph.industryData.enrollmentMappings",
            "ownerEnrollmentMappings": [
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "teacher"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "proctor"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "teacherAssistant"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "paraProfessional"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "physicalTherapist"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "speechTherapist"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "visionTherapist"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "occupationalTherapist"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "staff"
                }
            ],
            "memberEnrollmentMappings": [
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "student"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "substitute"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "aide"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "proctor"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "teacherAssistant"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "paraProfessional"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "physicalTherapist"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "speechTherapist"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "visionTherapist"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "occupationalTherapist"
                },
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "staff"
                }
            ]
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-classgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/post-classgroup-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-classgroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-classgroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-classgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-classgroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-classgroup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.provisioningFlow"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets('9ab41255-5364-4c53-e15c-08dc4ab6ee03')/provisioningFlows/$entity",
    "@odata.type": "#microsoft.graph.industryData.classGroupProvisioningFlow",
    "id": "417a82c8-7caa-4f82-3ac6-08dc4ac6fb7f",
    "createdDateTime": "2024-03-22T23:34:18.5035988Z",
    "lastModifiedDateTime": "2024-03-22T23:34:18.5035988Z",
    "readinessStatus": "notReady",
    "configuration": {
        "additionalAttributes": [
            "courseTitle",
            "courseCode",
            "courseSubject",
            "courseGradeLevel",
            "courseExternalId",
            "academicSessionTitle",
            "academicSessionExternalId"
        ],
        "additionalOptions": {
            "createTeam": true,
            "writeDisplayNameOnCreateOnly": true
        },
        "enrollmentMappings": {
            "ownerEnrollmentMappings": [
                {
                    "code": "teacher"
                },
                {
                    "code": "proctor"
                },
                {
                    "code": "teacherAssistant"
                },
                {
                    "code": "paraprofessional"
                },
                {
                    "code": "physicalTherapist"
                },
                {
                    "code": "speechTherapist"
                },
                {
                    "code": "visionTherapist"
                },
                {
                    "code": "occupationalTherapist"
                },
                {
                    "code": "staff"
                }
            ],
            "memberEnrollmentMappings": [
                {
                    "code": "student"
                },
                {
                    "code": "substitute"
                },
                {
                    "code": "aide"
                },
                {
                    "code": "proctor"
                },
                {
                    "code": "teacherAssistant"
                },
                {
                    "code": "paraprofessional"
                },
                {
                    "code": "physicalTherapist"
                },
                {
                    "code": "speechTherapist"
                },
                {
                    "code": "visionTherapist"
                },
                {
                    "code": "occupationalTherapist"
                },
                {
                    "code": "staff"
                }
            ]
        }
    }
}
```

### Example 3: Create a securityGroupProvisioningFlow

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_securitygroup"
}-->

```http
POST https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.securityGroupProvisioningFlow",
  "creationOptions":
  {
    "createBasedOnroleGroup": true,
    "createBasedOnOrgPlusroleGroup": false
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-securitygroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/post-securitygroup-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-securitygroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-securitygroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-securitygroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-securitygroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-securitygroup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.provisioningFlow"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets('9ab41255-5364-4c53-e15c-08dc4ab6ee03')/provisioningFlows/$entity",
    "@odata.type": "#microsoft.graph.industryData.securityGroupProvisioningFlow",
    "id": "4598f62a-7bd9-40a1-d38a-08dc4ac68cf2",
    "createdDateTime": "2024-03-22T23:55:06.3141592Z",
    "lastModifiedDateTime": "2024-03-22T23:55:06.3141592Z",
    "readinessStatus": "notReady",
    "creationOptions": {
        "createBasedOnRoleGroup": true,
        "createBasedOnOrgPlusRoleGroup": false
    }
}
```

### Example 4: Create a userProvisioningFlow

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_user"
}-->

```http
POST https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.industryData.userProvisioningFlow",
    "createUnmatchedUsers": true,
    "managementOptions":
    {
        "additionalAttributes": ["userGradeLevel"],
        "additionalOptions":
        {
            "markAllStudentsAsMinors": true,
            "allowStudentContactAssociation"  : false
        }
    },
    "creationOptions":
    {
        "configurations": [
          {
            "roleGroup@odata.bind": "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff",
            "defaultPasswordSettings":
            {
              "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",
              "password": "********"
            },
            "licenseSkus": [ "Sku1"]
          },
          {
            "roleGroup@odata.bind": "https://graph.microsoft.com/beta/external/industryData/roleGroups/students",
            "defaultPasswordSettings":
            {
              "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",
              "password": "********"
            },
            "licenseSkus": [ "Sku2"]
          }
        ]
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/post-user-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-user-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.provisioningFlow"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets('9ab41255-5364-4c53-e15c-08dc4ab6ee03')/provisioningFlows/$entity",
    "@odata.type": "#microsoft.graph.industryData.userProvisioningFlow",
    "id": "dbd36d16-c574-4ed8-3ac7-08dc4ac6fb7f",
    "createdDateTime": "2024-03-23T00:24:32.3286035Z",
    "lastModifiedDateTime": "2024-03-23T00:24:32.3286035Z",
    "readinessStatus": "notReady",
    "createUnmatchedUsers": true,
    "managementOptions": {
        "additionalAttributes": [
            "userGradeLevel"
        ],
        "additionalOptions": {
            "markAllStudentsAsMinors": true,
            "allowStudentContactAssociation": false
        }
    },
    "creationOptions": {
        "configurations": [
            {
                "licenseSkus": [
                    "Sku1"
                ],
                "defaultPasswordSettings": {
                    "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",
                    "password": "***************"
                }
            },
            {
                "licenseSkus": [
                    "Sku2"
                ],
                "defaultPasswordSettings": {
                    "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",
                    "password": "***************"
                }
            }
        ]
    }
}
```
