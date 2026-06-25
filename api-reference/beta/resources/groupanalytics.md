---
title: "groupAnalytics resource type"
description: "Represents point-in-time analytics for a group in a Microsoft Entra tenant."
ms.localizationpriority: medium
author: "Licantrop0"
ms.subservice: "reports"
doc_type: "resourcePageType"
ms.date: 06/09/2026
---

# groupAnalytics resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents point-in-time analytics for a group in a Microsoft Entra tenant, including its membership, ownership, and type. This resource is part of [identity analytics](../resources/identityanalyticsroot.md), at the `/reports/identityAnalytics/groups` path.

Each object reflects the data as of its **calculatedDateTime** value.

## Methods

| Method                                                       | Return type                                                | Description                                                                                |
| :----------------------------------------------------------- | :--------------------------------------------------------- | :----------------------------------------------------------------------------------------- |
| [List](../api/identityanalyticsroot-list-groups.md)          | [groupAnalytics](../resources/groupanalytics.md) collection | Get a list of the [groupAnalytics](../resources/groupanalytics.md) objects and their properties for the tenant. |
| [Get](../api/groupanalytics-get.md)                          | [groupAnalytics](../resources/groupanalytics.md)            | Read the properties of a [groupAnalytics](../resources/groupanalytics.md) object.          |

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| assignedRoleCount | Int64 | The number of directory roles assigned to the group. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| calculatedDateTime | DateTimeOffset | The date and time when the analytics for the group were last calculated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| createdDateTime | DateTimeOffset | The date and time when the group was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| directGroupMemberCount | Int64 | The number of direct members of the group that are themselves groups. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| displayName | String | The display name of the group. Supports `$filter` (`eq`, `ne`, `startsWith`, `endsWith`, `contains`) and `$orderby`. |
| dynamicMembershipType | String | The dynamic membership classification of the group, derived from its membership rule. Supports `$filter` (`eq`, `ne`, `startsWith`, `endsWith`, `contains`) and `$orderby`. |
| groupExpirationDateTime | DateTimeOffset | The date and time when the group expires. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| groupType | [groupTypeEnum](#grouptypeenum-values) | The type of the group. The possible values are mutually exclusive. For more information, see the [groupTypeEnum values](#grouptypeenum-values) section. Supports `$orderby`. |
| guestOwnerCount | Int64 | The number of owners of the group that are guest users. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| guestTransitiveUserCount | Int64 | The number of transitive user members of the group that are guest users. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| id | String | The unique identifier of the group. Supports `$filter` (`eq`, `ne`) and `$orderby`. |
| isCloudDistributionListGroup | Boolean | Indicates whether the group is a non-soft-deleted cloud distribution list group. Supports `$filter` (`eq`, `ne`) and `$orderby`. |
| isCloudM365Group | Boolean | Indicates whether the group is a non-soft-deleted cloud Microsoft 365 group. Supports `$filter` (`eq`, `ne`) and `$orderby`. |
| isCloudMailEnabledSecurityGroup | Boolean | Indicates whether the group is a non-soft-deleted cloud mail-enabled security group. Supports `$filter` (`eq`, `ne`) and `$orderby`. |
| isCloudSecurityGroup | Boolean | Indicates whether the group is a non-soft-deleted cloud security group. Supports `$filter` (`eq`, `ne`) and `$orderby`. |
| isDynamicGroup | Boolean | Indicates whether the group is a dynamic group. Supports `$filter` (`eq`, `ne`) and `$orderby`. |
| isOnPremiseDistributionListGroup | Boolean | Indicates whether the group is a non-soft-deleted on-premises distribution list group. Supports `$filter` (`eq`, `ne`) and `$orderby`. |
| isOnPremiseMailEnabledSecurityGroup | Boolean | Indicates whether the group is a non-soft-deleted on-premises mail-enabled security group. Supports `$filter` (`eq`, `ne`) and `$orderby`. |
| isOnPremiseSecurityGroup | Boolean | Indicates whether the group is a non-soft-deleted on-premises security group. Supports `$filter` (`eq`, `ne`) and `$orderby`. |
| isValidGroup | Boolean | Indicates whether the group is a valid (non-soft-deleted) group. Supports `$filter` (`eq`, `ne`) and `$orderby`. |
| lastRestorationDateTime | DateTimeOffset | The date and time when the group was last restored from a soft-deleted state. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| memberOwnerCount | Int64 | The number of owners of the group that are member (non-guest) users. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| memberTransitiveUserCount | Int64 | The number of transitive user members of the group that are member (non-guest) users. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| membershipRuleContainsCount | Int64 | The number of `contains` expressions in the membership rule of the group. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| membershipRuleExpressionCount | Int64 | The number of expressions in the membership rule of the group. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| membershipRuleMatchCount | Int64 | The number of `match` expressions in the membership rule of the group. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| membershipRuleMemberOfCount | Int64 | The number of `memberOf` expressions in the membership rule of the group. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| membershipRuleProcessingState | String | The processing state of the membership rule of the group. Supports `$filter` (`eq`, `ne`, `startsWith`, `endsWith`, `contains`) and `$orderby`. |
| preferredDataLocation | String | The preferred data location of the group. Supports `$filter` (`eq`, `ne`, `startsWith`, `endsWith`, `contains`) and `$orderby`. |
| sensitivityLabelCount | Int64 | The number of sensitivity labels applied to the group. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| servicePrincipalOwnerCount | Int64 | The number of owners of the group that are service principals. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| softDeletionDateTime | DateTimeOffset | The date and time when the group was soft-deleted. If this property is empty, the group isn't soft-deleted. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| tenantId | String | The unique identifier of the tenant that the group belongs to. Supports `$filter` (`eq`, `ne`) and `$orderby`. |
| transitiveServicePrincipalCount | Int64 | The number of transitive members of the group that are service principals. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |
| transitiveUserCount | Int64 | The total number of transitive user members of the group. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`. |

### groupTypeEnum values

| Member             | Description                        |
| :----------------- | :--------------------------------- |
| isCloudGroup       | The group is a cloud group.        |
| isOnPremiseGroup   | The group is an on-premises group. |
| isSoftDeletedGroup | The group is a soft-deleted group. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupAnalytics",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.groupAnalytics",
  "assignedRoleCount": "Integer",
  "calculatedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "directGroupMemberCount": "Integer",
  "displayName": "String",
  "dynamicMembershipType": "String",
  "groupExpirationDateTime": "String (timestamp)",
  "groupType": "String",
  "guestOwnerCount": "Integer",
  "guestTransitiveUserCount": "Integer",
  "id": "String (identifier)",
  "isCloudDistributionListGroup": "Boolean",
  "isCloudM365Group": "Boolean",
  "isCloudMailEnabledSecurityGroup": "Boolean",
  "isCloudSecurityGroup": "Boolean",
  "isDynamicGroup": "Boolean",
  "isOnPremiseDistributionListGroup": "Boolean",
  "isOnPremiseMailEnabledSecurityGroup": "Boolean",
  "isOnPremiseSecurityGroup": "Boolean",
  "isValidGroup": "Boolean",
  "lastRestorationDateTime": "String (timestamp)",
  "memberOwnerCount": "Integer",
  "memberTransitiveUserCount": "Integer",
  "membershipRuleContainsCount": "Integer",
  "membershipRuleExpressionCount": "Integer",
  "membershipRuleMatchCount": "Integer",
  "membershipRuleMemberOfCount": "Integer",
  "membershipRuleProcessingState": "String",
  "preferredDataLocation": "String",
  "sensitivityLabelCount": "Integer",
  "servicePrincipalOwnerCount": "Integer",
  "softDeletionDateTime": "String (timestamp)",
  "tenantId": "String",
  "transitiveServicePrincipalCount": "Integer",
  "transitiveUserCount": "Integer"
}
```
