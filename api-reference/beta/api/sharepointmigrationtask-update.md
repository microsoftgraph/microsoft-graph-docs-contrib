---
title: "Create or update sharePointMigrationTask"
description: "Create or update the properties of a sharePointMigrationTask object."
author: "Joey-King"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# Create or update sharePointMigrationTask

Create or update a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) to migrate a resource from the source organization to the target organization, using the sharePointMigrationTaskParameters. The resource can be a user, a group, or a site.

>**Note:** Based on the OData standard, the entire **sharePointMigrationTask** structure must be included in the request body, although only **sharePointMigrationTaskParameters** are used to instantiate the task. For required properties such as **id** and **status**, empty or default values can be provided because they're ignored during initial task creation.

When an existing **sharePointMigrationTask** is retrieved, it might contain not only the specifics of the source and target organizations and resources, but also the status of the migration and errors encountered during the migration operation.

The API calls occur on the source site and only add list items to the my site root web, for example, `contoso-my.sharepoint.com`. Then, it triggers a multi-geo site move job in the backend to enqueue and orchestrate several tenant workflow jobs, such as backup, restore, and cleanup, supported by TJ infrastructure.

The OData type of **sharePointResourceMigrationParameters** differentiates user migration from site migration, rather than using different subpaths. For a user's OneDrive migration, specify **sharePointUserMigrationParameters**. If this migration task is a regular SharePoint site migration, specify **sharePointSiteMigrationParameters**. If this migration task is a group-connected site migration, specify **sharePointGroupMigrationParameters**.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointmigrationtask_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointmigrationtask-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/sharePoint/migrations/crossOrganizationMigrationTasks
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|parameters|[sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md)|Encapsulates the parameters necessary to migrate a specific source resource.|

## Response

If successful, this method returns a `200 OK` response code and an updated [sharePointMigrationTask](../resources/sharepointmigrationtask.md) object in the response body.

## Examples

### Example 1: Create a user migration task by using the user principal name

The following example shows how to create a user migration task by **userPrincipalName**.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_sharepointmigrationtask_by_userprincipalname"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationMigrationTasks
Content-Type: application/json

{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity": {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity": {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-sharepointmigrationtask-by-userprincipalname-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-sharepointmigrationtask-by-userprincipalname-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-sharepointmigrationtask-by-userprincipalname-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-sharepointmigrationtask-by-userprincipalname-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-sharepointmigrationtask-by-userprincipalname-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-sharepointmigrationtask-by-userprincipalname-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointMigrationTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity": {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity": {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    }
  }
}
```

### Example 2: Create a user migration task by using the user object ID

The following example shows how to create a user migration task by **userObjectId**.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_sharepointmigrationtask_by_userobjectid"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationMigrationTasks
Content-Type: application/json

{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity": {
      "id": "da157a29-f793-4dd6-9c73-41d2c73c2546"
    },
    "targetUserIdentity": {
      "id": "cb53ea98-6151-44cc-9c21-098a3c3e3988"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-sharepointmigrationtask-by-userobjectid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-sharepointmigrationtask-by-userobjectid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-sharepointmigrationtask-by-userobjectid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-sharepointmigrationtask-by-userobjectid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-sharepointmigrationtask-by-userobjectid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-sharepointmigrationtask-by-userobjectid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointMigrationTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity": {
      "id": "da157a29-f793-4dd6-9c73-41d2c73c2546"
    },
    "targetUserIdentity": {
      "id": "cb53ea98-6151-44cc-9c21-098a3c3e3988"
    }
  }
}
```

### Example 3: Create a user migration task by using the user object ID and the target data location code

The following example shows how to create a user migration task by **userObjectId** and with specific **targetDataLocationCode**.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_sharepointmigrationtask_with_targetdatalocationcode"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationMigrationTasks
Content-Type: application/json

{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationId": "78d010af-72cb-412f-8779-18ce9b5f553b",
    "targetDataLocationCode": null,
    "sourceUserIdentity": {
      "id": "da157a29-f793-4dd6-9c73-41d2c73c2546"
    },
    "targetUserIdentity": {
      "id": "cb53ea98-6151-44cc-9c21-098a3c3e3988"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-sharepointmigrationtask-with-targetdatalocationcode-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-sharepointmigrationtask-with-targetdatalocationcode-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-sharepointmigrationtask-with-targetdatalocationcode-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-sharepointmigrationtask-with-targetdatalocationcode-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-sharepointmigrationtask-with-targetdatalocationcode-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-sharepointmigrationtask-with-targetdatalocationcode-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointMigrationTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationId": "78d010af-72cb-412f-8779-18ce9b5f553b",
    "targetDataLocationCode": "FRA",
    "sourceUserIdentity": {
      "id": "da157a29-f793-4dd6-9c73-41d2c73c2546",
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity": {
      "id": "cb53ea98-6151-44cc-9c21-098a3c3e3988",
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    }
  }
}
```

### Example 4: Create a site migration task

The following example shows how to create a regular site migration task.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_sharepointmigrationtask_by_siteurl"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationMigrationTasks
Content-Type: application/json

{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointSiteMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceSiteUrl": "https://contoso.sharepoint.com/sites/IT",
    "targetSiteUrl": "https://fabrico.sharepoint.com/sites/IT"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-sharepointmigrationtask-by-siteurl-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-sharepointmigrationtask-by-siteurl-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-sharepointmigrationtask-by-siteurl-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-sharepointmigrationtask-by-siteurl-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-sharepointmigrationtask-by-siteurl-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-sharepointmigrationtask-by-siteurl-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointMigrationTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointSiteMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceSiteUrl": "https://contoso.sharepoint.com/sites/IT",
    "targetSiteUrl": "https://fabrico.sharepoint.com/sites/IT"
  }
}
```

### Example 5: Create a group migration task

The following example shows how to create a group-connected site migration task by **mailNickname**.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_sharepointmigrationtask_by_mailnickname"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationMigrationTasks
Content-Type: application/json

{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointGroupMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceGroupIdentity": {
      "mailNickname": "source-group"
    },
    "targetGroupIdentity": {
      "mailNickname": "target-group"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-sharepointmigrationtask-by-mailnickname-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-sharepointmigrationtask-by-mailnickname-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-sharepointmigrationtask-by-mailnickname-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-sharepointmigrationtask-by-mailnickname-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-sharepointmigrationtask-by-mailnickname-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-sharepointmigrationtask-by-mailnickname-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointMigrationTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointGroupMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceGroupIdentity": {
      "mailNickname": "source-group"
    },
    "targetGroupIdentity": {
      "mailNickname": "target-group"
    }
  }
}
```

### Example 6: Create a user migration task with a preferred start date and time

The following example shows how to create a user migration task with the **preferredStartDateTime** parameter.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_sharepointmigrationtask_with_preferredstartdatetime"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationMigrationTasks
Content-Type: application/json

{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity": {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity": {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    },
    "preferredStartDateTime": "2024-08-31T16:00:00Z"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-sharepointmigrationtask-with-preferredstartdatetime-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-sharepointmigrationtask-with-preferredstartdatetime-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-sharepointmigrationtask-with-preferredstartdatetime-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-sharepointmigrationtask-with-preferredstartdatetime-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-sharepointmigrationtask-with-preferredstartdatetime-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-sharepointmigrationtask-with-preferredstartdatetime-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointMigrationTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity": {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity": {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    },
    "preferredStartDateTime": "2024-08-31T16:00:00Z"
  }
}
```

### Example 7: Create user migration task with validateOnly

The following example shows how to create a user migration task with `"validateOnly": true` parameter.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_sharepointmigrationtask_with_validateonly"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationMigrationTasks
Content-Type: application/json

{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "validateOnly": true,
    "sourceUserIdentity": {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity": {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-sharepointmigrationtask-with-validateonly-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-sharepointmigrationtask-with-validateonly-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-sharepointmigrationtask-with-validateonly-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-sharepointmigrationtask-with-validateonly-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-sharepointmigrationtask-with-validateonly-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-sharepointmigrationtask-with-validateonly-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointMigrationTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "status": "completed",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "validateOnly": true,
    "sourceUserIdentity": {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity": {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    }
  }
}
```
