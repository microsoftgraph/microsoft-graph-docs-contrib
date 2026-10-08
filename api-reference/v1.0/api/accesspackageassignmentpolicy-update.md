---
title: "Update accessPackageAssignmentPolicy"
description: "Update the properties of an accessPackageAssignmentPolicy object."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 09/10/2024
---
# Update accessPackageAssignmentPolicy

Namespace: microsoft.graph

Update an existing [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object to change one or more of its properties, such as the display name or description.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackageassignmentpolicy_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackageassignmentpolicy-update-permissions.md)]

[!INCLUDE [rbac-entitlement-access-package-manager-write](../includes/rbac-for-apis/rbac-entitlement-management-access-package-manager-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /identityGovernance/entitlementManagement/assignmentPolicies/{accessPackageAssignmentPolicyId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object.

The following table shows the properties that are required when you update an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|accessPackage|[accessPackage](../resources/accesspackage.md)|Access package containing this policy. Only the **id** property is required.|
|displayName|String|The display name of the policy. Required.|
|description|String|The description of the policy. Required.|
|allowedTargetScope|allowedTargetScope|Who is allowed to request the access package through this policy. The possible values are: `notSpecified`, `specificDirectoryUsers`, `specificConnectedOrganizationUsers`, `specificDirectoryServicePrincipals`, `allMemberUsers`, `allDirectoryUsers`, `allDirectoryServicePrincipals`, `allConfiguredConnectedOrganizationUsers`, `allExternalUsers`, `unknownFutureValue`. Required.|
|automaticRequestSettings|[accessPackageAutomaticRequestSettings](../resources/accessPackageAutomaticRequestSettings.md)|This property is only present for an auto assignment policy; if absent, this is a request-based policy. Required.|
|specificAllowedTargets|[subjectSet](../resources/subjectset.md) collection|The principals that can be assigned access from an access package through this policy. Required.|
|expiration|[expirationPattern](../resources/expirationpattern.md)|The expiration date for assignments created in this policy. Required.|
|notificationSettings|[accessPackageNotificationSettings](../resources/accesspackagenotificationsettings.md)|Represents the settings for email notifications for requests to an access package.|
|requestorSettings|[accessPackageAssignmentRequestorSettings](../resources/accesspackageassignmentrequestorsettings.md)|Provides additional settings to select who can create a request for an access package assignment through this policy, and what they can include in their request. Required.|
|requestApprovalSettings|[accessPackageAssignmentApprovalSettings](../resources/accesspackageassignmentapprovalsettings.md)|Specifies the settings for approval of requests for an access package assignment through this policy. For example, if approval is required for new requests. Required.|
|reviewSettings|[accessPackageAssignmentReviewSettings](../resources/accesspackageassignmentreviewsettings.md)|Settings for access reviews of assignments through this policy. Required.|
|questions|[accessPackageQuestion](../resources/accesspackagequestion.md) collection|Questions that are posed to the  requestor. Required.|

## Response
If successful, this method returns a `200 OK` response code and an updated [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object in the response body.



## Examples

### Example 1: Update the details of a policy

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentpolicy"
}
-->
``` http
PUT https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentPolicies/87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187
Content-Type: application/json

{
  "id":"87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187",
  "displayName": "All Users",
  "description": "All users can request for access to the directory.",
  "allowedTargetScope": "allDirectoryUsers",
  "automaticRequestSettings": null,
  "specificAllowedTargets": [],
  "expiration": {
      "type": "noExpiration"
  },
  "requestorSettings": {
      "enableTargetsToSelfAddAccess": true,
      "enableTargetsToSelfUpdateAccess": false,
      "enableTargetsToSelfRemoveAccess": true,
      "allowCustomAssignmentSchedule": false,
      "enableOnBehalfRequestorsToAddAccess": false,
      "enableOnBehalfRequestorsToUpdateAccess": false,
      "enableOnBehalfRequestorsToRemoveAccess": false,
      "onBehalfRequestors": []
  },
  "requestApprovalSettings": {
      "isApprovalRequiredForAdd": true,
      "isApprovalRequiredForUpdate": false,
      "stages": [
          {
              "durationBeforeAutomaticDenial": "P2D",
              "isApproverJustificationRequired": false,
              "isEscalationEnabled": false,
              "durationBeforeEscalation": "PT0S",
              "primaryApprovers": [
                  {
                      "@odata.type": "#microsoft.graph.requestorManager",
                      "managerLevel": 1
                  }
              ],
              "fallbackPrimaryApprovers": [
                  {
                      "@odata.type": "#microsoft.graph.singleUser",
                      "userId": "e6bf4d7d-6824-4dd0-809d-5bf42d4817c2",
                      "description": "user"
                  }
              ],
              "escalationApprovers": [],
              "fallbackEscalationApprovers": []
          }
      ]
  },
  "accessPackage": {
        "id": "49d2c59b-0a81-463d-a8ec-ddad3935d8a0"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackageassignmentpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accesspackageassignmentpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackageassignmentpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackageassignmentpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackageassignmentpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackageassignmentpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackageassignmentpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187",
  "displayName": "All Users",
  "description": "All users can request for access to the directory."
}
```

### Example 2: Remove the customExtensionStageSettings from a policy

To remove the collection of **customExtensionStageSettings** and their associated custom workflow extension objects from a policy, assign an empty collection to the **customExtensionStageSettings** object.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentpolicy_delete_customExtensionStageSettings"
}
-->

```http
PUT https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentPolicies/4540a08f-8ab5-43f6-a923-015275799197
Content-Type: application/json

{
    "id": "5540a08f-8ab5-43f6-a923-015275799197",
    "displayName": "policy with access package custom workflow extension",
    "description": "Run specified access package custom workflow extension at different stages.",
    "accessPackageId": "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
    "expiration": {
        "type": "afterDuration",
        "duration": "P365D"
    },
    "requestApprovalSettings": null,
    "requestorSettings": {
        "acceptRequests": true,
        "scopeType": "AllExistingDirectorySubjects",
        "allowedRequestors": []
    },
    "accessReviewSettings": null,
    "customExtensionStageSettings": []
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "4540a08f-8ab5-43f6-a923-015275799197",
    "displayName": "policy with access package custom workflow extension",
    "description": "Run specified access package custom workflow extension at different stages.",
    "accessPackageId": "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
    "expiration": {
        "type": "afterDuration",
        "duration": "P365D"
    },
    "requestApprovalSettings": null,
    "requestorSettings": {
        "acceptRequests": true,
        "scopeType": "AllExistingDirectorySubjects",
        "allowedRequestors": []
    },
    "accessReviewSettings": null
}
```

### Example 3: Update the customExtensionStageSettings for a policy

The following example shows how to update a policy to include a custom extension.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentpolicy_updating_customExtensionStageSettings"
}
-->

```http
PUT https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentPolicies/f9afd2e3-7486-40df-9c35-aa2ae108c495
Content-Type: application/json

{
    "displayName": "API Created policy with updated customExtensionStageSettings",
    "description": "policy with updated customExtensionStageSettings",
    "allowedTargetScope": "notSpecified",
    "specificAllowedTargets": [],
    "expiration": {
        "endDateTime": null,
        "duration": null,
        "type": "noExpiration"
    },
    "requestorSettings": {
        "enableTargetsToSelfAddAccess": false,
        "enableTargetsToSelfUpdateAccess": false,
        "enableTargetsToSelfRemoveAccess": false,
        "allowCustomAssignmentSchedule": true,
        "enableOnBehalfRequestorsToAddAccess": false,
        "enableOnBehalfRequestorsToUpdateAccess": false,
        "enableOnBehalfRequestorsToRemoveAccess": false,
        "onBehalfRequestors": []
    },
    "requestApprovalSettings": {
        "isApprovalRequiredForAdd": false,
        "isApprovalRequiredForUpdate": false,
        "stages": []
    },
    "accessPackage": {
        "id": "f9afd2e3-7486-40df-9c35-aa2ae108c495"
    },
    "customExtensionStageSettings": [
        {
            "stage": "assignmentRequestCreated",
            "customExtension": {
                "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
                "id": "bebe7873-1f0d-4db9-b6c3-01f7ebfe8476"
            }
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "4540a08f-8ab5-43f6-a923-015275799197",
    "displayName": "API Created policy with updated customExtensionStageSettings",
    "description": "policy with updated customExtensionStageSettings",
    "accessPackageId": "f9afd2e3-7486-40df-9c35-aa2ae108c495",
    "expiration": {
        "type": "afterDuration",
        "duration": "P365D"
    },
    "requestApprovalSettings": null,
    "requestorSettings": {
        "acceptRequests": true,
        "scopeType": "AllExistingDirectorySubjects",
        "allowedRequestors": []
    },
    "accessReviewSettings": null,
    "customExtensionStageSettings": [
        {
            "stage": "assignmentRequestCreated",
            "customExtension": {
                "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
                "id": "bebe7873-1f0d-4db9-b6c3-01f7ebfe8476"
            }
        }
    ]
}
```
