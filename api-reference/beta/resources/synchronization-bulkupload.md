---
title: "bulkUpload resource type"
description: "Represents capability of the synchronization service to process bulk uploads."
author: "cmmdesai"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType 
---

# bulkUpload resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the capability of the Azure AD synchronization service to process bulk uploads.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Perform bulkUpload](../api/synchronization-synchronizationjob-post-bulkupload.md)| None |Perform a new bulk upload using the synchronization job.|

## Properties

The bulkUpload resource type accepts the following properties in the payload:

- The **schemas** parameter at the root level that must be set to `urn:ietf:params:scim:api:messages:2.0:BulkRequest`. Required. The following JSON block shows a representation of the **schemas** parameter.

   ```json
   "schemas": [
    "urn:ietf:params:scim:api:messages:2.0:BulkRequest"
   ]
   ```

- The **Operations** parameter contains an array of key-value pairs. Each request can contain a maximum of 50 user operations under this parameter. The following key-value pairs are _required_ in each object in the array.
  - **method** key can be set to one of the following values `POST` or `DELETE`
   > [!NOTE]
   > When the **method** key is set to `POST`, the provisioning service will determine the right operation to perform on the target (create/update/enable/disable) based on the attribute mapping configuration. For example, if you have set {externalId,employeeId} as the matching identifier pair, then the provisioning service will check if a user with the employeeId exists in Azure AD. If it doesn't exist, then the provisioning service will create the user. If it exists, then the provisioning service will update the user record.
  - **path** key always set to the value `/Users`
  - **bulkId** key set to a unique ID value. For example, if the data is coming from an HR source, you may set this value to `employeeId` which is guaranteed to be unique in the HR system.  
  - **data** object. Required. The **data** object must have the following objects:
  - The `schemas` array under the `data` object must have the schemas: `urn:ietf:params:scim:schemas:core:2.0:User` and `urn:ietf:params:scim:schemas:extension:enterprise:2.0:User` representing the SCIM schema URI for the [Core User Resource](https://datatracker.ietf.org/doc/html/rfc7643#section-4.1) and the [Enterprise User Extension](https://datatracker.ietf.org/doc/html/rfc7643#section-4.3), respectively. You may include additional custom SCIM schema names in case of attribute extensions.
  - **externalId** key set to a unique identifier in the source system. For example, `employeeId` or `personId` or `studentId`.
  
  The following JSON sample shows an example of an **Operations** object.

   ```json
   {
      "method": "POST",
      "bulkId": "d63f4f30-a198-43db-a34d-f72bfa1f551e",
      "path": "/Users",
      "data": {
        "schemas": [
          "urn:ietf:params:scim:schemas:core:2.0:User",
          "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"
        ],
        "externalId": "EMP1830"
    ... [You may include other SCIM attributes and extensions under the data object.]
      }
    }    

   ```

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bulkUpload",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bulkUpload"
}
```
