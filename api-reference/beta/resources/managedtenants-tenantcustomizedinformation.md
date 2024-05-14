---
title: "tenantCustomizedInformation resource type"
description: "Represents customizable information for a managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
---

# tenantCustomizedInformation resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents customizable information for a managed tenant.

## Methods
| Method                                                                                                        | Return type                                                                                                                         | Description                                                                                                                                  |
| :------------------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------- |
| [List tenantCustomizedInformations](../api/managedtenants-managedtenant-list-tenantscustomizedinformation.md) | [microsoft.graph.managedTenants.tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) collection | Get a list of the [tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) objects and their properties.    |
| [Get tenantCustomizedInformation](../api/managedtenants-tenantcustomizedinformation-get.md)                   | [microsoft.graph.managedTenants.tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md)            | Read the properties and relationships of a [tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) object. |
| [Update tenantCustomizedInformation](../api/managedtenants-tenantcustomizedinformation-update.md)             | [microsoft.graph.managedTenants.tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md)            | Update the properties of a [tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) object.                 |

## Properties
| Property                          | Type                                                                                                                          | Description                                                                                                                                                                                         |
| :-------------------------------- | :---------------------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| contacts                          | [microsoft.graph.managedTenants.tenantContactInformation](../resources/managedtenants-tenantcontactinformation.md) collection | The collection of contacts for the managed tenant. Optional.                                                                                                                                        |
| displayName                       | String                                                                                                                        | The display name for the managed tenant. Required. Read-only.                                                                                                                                       |
| id                                | String                                                                                                                        | The Microsoft Entra tenant identifier for the managed tenant. Required. Read-only.                                                                                                                  |
| tenantId                          | String                                                                                                                        | The Microsoft Entra tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Optional. Read-only.                                                                         |
| website                           | String                                                                                                                        | The website for the managed tenant. Required.                                                                                                                                                       |
| businessRelationship              | String                                                                                                                        | Describes the relationship between the Managed Services Provider and the managed tenant; for example, Managed, Co-managed, Licensing. The maximum length is 250 characters. Optional.               |
| complianceRequirements            | String collection                                                                                                             | Contains the compliance requirements for the customer tenant; for example, HIPPA, NIST, CMMC. The maximum length is 250 characters per compliance requirement. Optional.                            |
| managedServicesPlans              | String collection                                                                                                             | This is the Managed Services Plans for the customer tenant that the Managed Services Provider manages. The maximum length is 250 characters per managed service plan. Optional.                     |
| note                              | String                                                                                                                        | A field for the Managed Services Provider technician to input custom text to share notes between technicians within the Managed Service Providers. The maximum length is 5000 characters. Optional. |
| noteLastModifiedDateTime          | DateTimeOffset                                                                                                                | The date on which the note field of this entity was last modified. Optional.                                                                                                                        |
| partnerRelationshipManagerUserIds | String collection                                                                                                             | The list of Entra user IDs for users in the Managed Services Provider that manage the relationship with the managed tenant. Optional.                                                               |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.tenantCustomizedInformation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
    {
      "id": "34298981-4fc8-4974-9486-c8909ed1521b",
      "tenantId": "34298981-4fc8-4974-9486-c8909ed1521b",
      "website": "https://www.fourthcoffee.com",
      "contacts": [
        {
          "name": "Sally",
          "email": "sally@fourthcoffee.com",
          "phone": "5558009731"
        },
        {
          "name": "Hector",
          "email": "hector@fourthcoffee.com",
          "phone": "5558009732"
        }
      ],
      "businessRelationship": "Managed",
      "complianceRequirements": [
        "NIST",
        "HIPPA"
      ],
      "managedServicesPlans": [
        "Microsoft Entra ID P1"
      ],
      "note": "This is a test note.",
      "noteLastModifiedDateTime": "2024-04-03 00:10:21.1989208",
      "partnerRelationshipManagerUserIds": [
        "3c23994c-711b-46f6-ab1e-0aeef19413f3"
      ]
    }
```
