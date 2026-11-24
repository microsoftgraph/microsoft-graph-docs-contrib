---
title: "resourcePolicyDefinition resource type"
description: "Represents a versioned Rego policy definition that governs Microsoft Graph resource changes."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# resourcePolicyDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a versioned Rego policy definition that governs Microsoft Graph resource changes.

For policy structure, metadata, parameters, and examples, see [Author policies with Rego](/entra/id-governance/tenant-governance/resource-policy-rego).

The Rego package name supplies the definition's **uniqueName** and **version**, using the format `graph.<uniqueName>["<semantic-version>"]`. The semantic version has three numeric components: `major.minor.patch`. For example, `package graph.require_application_name["1.0.0"]` identifies version `1.0.0` of `require_application_name`.

The service extracts **displayName** from `__metadata__.title`, **description** from `__metadata__.description`, and **category** from `__metadata__.category`. It computes **rule.appliesTo** from `__metadata__.selector`. The selector must contain a supported, case-sensitive **resourceName** and a nonempty **operations** array. For example, the following declarations select application creation and update operations:

```rego
package graph.require_application_name["1.0.0"]

__metadata__ := {
  "title": "Require an application name",
  "description": "Require applications to have a display name",
  "category": "identityAndTenant",
  "selector": {
    "resourceName": "microsoft.graph.application",
    "operations": ["create", "updateOrUpsert"]
  }
}
```

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List definitions](../api/resourcepolicyroot-list-definitions.md)|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md) collection|List customer-authored definitions.|
|[List built-in definitions](../api/resourcepolicyroot-list-builtindefinitions.md)|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md) collection|List read-only Microsoft-authored definitions.|
|[Create](../api/resourcepolicydefinition-create.md)|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md)|Create a customer-authored definition.|
|[Get](../api/resourcepolicydefinition-get.md)|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md)|Read an active, built-in, or deleted definition.|
|[Update](../api/resourcepolicydefinition-update.md)|None|Update a customer-authored definition.|
|[Upsert](../api/resourcepolicydefinition-upsert.md)|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md)|Create a definition, or update it with no response body if it exists.|
|[Delete](../api/resourcepolicydefinition-delete.md)|None|Delete an active definition.|
|[Permanently delete](../api/resourcepolicydeletableroot-delete-definitions.md)|None|Permanently delete a definition.|
|[Restore](../api/resourcepolicydefinition-restore.md)|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md)|Restore a deleted definition.|
|[List previous versions](../api/resourcepolicydefinition-list-previousversions.md)|[resourcePolicyDefinitionVersion](../resources/resourcepolicydefinitionversion.md) collection|List an active customer-authored or built-in definition's previous versions.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|[policyCategory](../resources/enums.md#policycategory-values)|The functional category extracted from the Rego policy metadata. The default is `notSpecified`. Supports `$filter` (`eq`). Read-only. The possible values are: `notSpecified`, `workloadIdentity`, `identityAndTenant`, `privilegedAccess`, `zeroTrust`, `agenticIdentity`, `networkAccess`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The date and time the object was created, in ISO 8601 format and UTC. Read-only. Supports `$filter` (`le`, `gt`).|
|deletedDateTime|DateTimeOffset|The date and time the object was deleted, in ISO 8601 format and UTC. Null for an active object. Read-only.|
|description|String|The description extracted from the Rego policy metadata. Maximum length is 1,024 characters. Read-only.|
|displayName|String|The display name extracted from the Rego policy's `__metadata__.title`. Maximum length is 128 characters. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time the object was last modified, in ISO 8601 format and UTC. Read-only. Supports `$filter` (`le`, `gt`).|
|paramsSchema|[Json](../resources/json.md)|The JSON parameter schema extracted from the Rego policy's `__metadata__`. Assignment parameter values are validated against this schema. Supports `$select`. Read-only.|
|rule|[resourcePolicyRule](../resources/resourcepolicyrule.md)|The Rego policy and its computed applicability information.|
|uniqueName|String|The immutable unique name and primary key, matching the name in the Rego package. Required in a JSON create request; derived from the package name in a plain-text create request. Must start with an ASCII letter, contain only ASCII letters, digits, or underscores, and have at most 128 characters. The prefixes `microsoft` and `ms` (including `msft`) and the exact names `utils` and `input` are reserved, regardless of case. Hyphens and non-ASCII characters aren't allowed.|
|version|String|The three-part semantic version extracted from the Rego package name, such as `1.0.0` in `package graph.require_application_name["1.0.0"]`. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[resourcePolicyAssignment](../resources/resourcepolicyassignment.md) collection|The assignments for this definition. Read-only. Supports `$expand`.|
|previousVersions|[resourcePolicyDefinitionVersion](../resources/resourcepolicydefinitionversion.md) collection|The previous versions of an active customer-authored or built-in definition. Read-only. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "uniqueName",
  "@odata.type": "microsoft.graph.resourcePolicyDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourcePolicyDefinition",
  "uniqueName": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "category": "String",
  "version": "String",
  "deletedDateTime": "String (timestamp)",
  "rule": {
    "@odata.type": "microsoft.graph.resourcePolicyRule"
  },
  "paramsSchema": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```
