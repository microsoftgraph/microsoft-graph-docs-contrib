# Manual Changelog Authoring Guide

This guide covers how to manually create changelog entries for changes that don't trigger automatic generation (e.g., throttling updates, query capability changes, page size limit changes).

## When to Manually Author Changelog Entries

Manual changelog entries are typically needed for:
- Throttling metric updates
- Query capability changes (e.g., $top max/default page size, $filter support, $expand support)
- Custom query option support
- Permission support changes
- Other non-schema changes that affect API behavior

These changes typically go in **Manual.NonWorkloadChanges.json** but can be added to any workload-specific changelog JSON file.

## Changelog Record Structure

### Required ChangeList Record Properties

Each changelog entry must be part of a "ChangeList" array with the following required properties:

| Property | Description | Example Values |
|----------|-------------|----------------|
| **Id** | GUID identifier. Use the same GUID for all related changes in a release. | "6ebc1737-3f93-4ef1-a9e7-cafa03262cf8" |
| **ApiChange** | The type of Microsoft Graph API element being changed. | "Resource", "Property", "Relationship", "Method", "Enumeration", "Member", "Parameter", "Header", "Permission" |
| **ChangedApiName** | The name of the specific API element that changed. | "user", "displayName", "manager", "delta", "status", "active", "id", "Authorization", "User.Read.All" |
| **ChangeType** | The nature of the change. | "Addition", "Change", "Deletion", "Deprecation" |
| **Description** | Clear description of the change with full URLs to affected resources/operations. Must include en-us locale. | "Added the **displayName** property to the [user](https://learn.microsoft.com/en-us/graph/api/resources/user?view=graph-rest-v1.0) resource." |
| **Target** | The parent resource, enumeration, or method name affected by the change. | "user", "status", "delta" |

### Additional Record-Level Properties

These properties apply to the entire changelog record (not individual ChangeList items):

| Property | Description | Default Value | Possible Values |
|----------|-------------|---------------|-----------------|
| **Cloud** | The cloud environment where the change is available. | "prd" | "prd" (production) |
| **Version** | The API version where the change is available. | "v1.0" | "v1.0", "beta" |
| **CreatedDateTime** | UTC timestamp when the changelog entry was created. Use PowerShell: `(Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ss.fffffffZ")` | Current UTC datetime | "2025-11-17T17:38:10.4694969Z" (ISO 8601/RFC 3339 format with fractional seconds) |
| **WorkloadArea** | The first-level TOC workload area. | (None - must specify) | See [Microsoft Graph CDK](https://aka.ms/msgraphcdk) |
| **SubArea** | The second-level TOC sub-area. | "" (empty string) | See [Microsoft Graph CDK](https://aka.ms/msgraphcdk) |

## Changelog JSON Template

```json
{
  "changelog": [
    {
      "ChangeList": [
        {
          "Id": "<GUID>",
          "ApiChange": "<Resource|Property|Relationship|Method|Enumeration|Member|Parameter|Header|Permission>",
          "ChangedApiName": "<element-name>",
          "ChangeType": "<Addition|Change|Deletion|Deprecation>",
          "Description": "<Description with full URLs including en-us locale>",
          "Target": "<parent-resource-or-enum-or-method>"
        }
      ],
      "Id": "<same-GUID-as-ChangeList>",
      "Cloud": "prd",
      "Version": "v1.0",
      "CreatedDateTime": "<YYYY-MM-DDTHH:mm:ss.fffffffZ>",
      "WorkloadArea": "<WorkloadArea>",
      "SubArea": "<SubArea-or-empty-string>"
    }
  ]
}
```

## Common Manual Changelog Scenarios

### Example 1: Add Support for $filter on an Existing Property

```json
{
  "changelog": [
    {
      "ChangeList": [
        {
          "Id": "a1b2c3d4-e5f6-4a5b-9c8d-7e6f5a4b3c2d",
          "ApiChange": "Property",
          "ChangedApiName": "displayName",
          "ChangeType": "Addition",
          "Description": "Added support for `$filter` on the **displayName** property to the [list](https://learn.microsoft.com/en-us/graph/api/user-list?view=graph-rest-v1.0) operation of [user](https://learn.microsoft.com/en-us/graph/api/resources/user?view=graph-rest-v1.0).",
          "Target": "user"
        }
      ],
      "Id": "a1b2c3d4-e5f6-4a5b-9c8d-7e6f5a4b3c2d",
      "Cloud": "prd",
      "Version": "v1.0",
      "CreatedDateTime": "2024-01-15T10:30:00",
      "WorkloadArea": "Identity and access",
      "SubArea": "Users"
    }
  ]
}
```

### Example 2: Add Support for $expand on a Navigation Property

```json
{
  "changelog": [
    {
      "ChangeList": [
        {
          "Id": "f1e2d3c4-b5a6-4c5d-8e9f-0a1b2c3d4e5f",
          "ApiChange": "Relationship",
          "ChangedApiName": "manager",
          "ChangeType": "Addition",
          "Description": "Added support for `$expand` on the **manager** relationship to the [list](https://learn.microsoft.com/en-us/graph/api/user-list?view=graph-rest-v1.0) and [get](https://learn.microsoft.com/en-us/graph/api/user-get?view=graph-rest-v1.0) operations of [user](https://learn.microsoft.com/en-us/graph/api/resources/user?view=graph-rest-v1.0).",
          "Target": "user"
        }
      ],
      "Id": "f1e2d3c4-b5a6-4c5d-8e9f-0a1b2c3d4e5f",
      "Cloud": "prd",
      "Version": "v1.0",
      "CreatedDateTime": "2024-01-15T11:00:00",
      "WorkloadArea": "Identity and access",
      "SubArea": "Users"
    }
  ]
}
```

### Example 3: Add Support for Custom Query Option

```json
{
  "changelog": [
    {
      "ChangeList": [
        {
          "Id": "c5d6e7f8-a9b0-4d5e-9f0a-1b2c3d4e5f6a",
          "ApiChange": "Method",
          "ChangedApiName": "delta",
          "ChangeType": "Addition",
          "Description": "Added support for the custom query option `changeType` on the [delta](https://learn.microsoft.com/en-us/graph/api/message-delta?view=graph-rest-v1.0) method of [message](https://learn.microsoft.com/en-us/graph/api/resources/message?view=graph-rest-v1.0).",
          "Target": "delta"
        }
      ],
      "Id": "c5d6e7f8-a9b0-4d5e-9f0a-1b2c3d4e5f6a",
      "Cloud": "prd",
      "Version": "v1.0",
      "CreatedDateTime": "2024-01-15T12:00:00",
      "WorkloadArea": "Personal productivity",
      "SubArea": "Mail"
    }
  ]
}
```

### Example 4: Update Throttling Limits

```json
{
  "changelog": [
    {
      "ChangeList": [
        {
          "Id": "b4c5d6e7-f8a9-4b5c-8d9e-0f1a2b3c4d5e",
          "ApiChange": "Method",
          "ChangedApiName": "list",
          "ChangeType": "Change",
          "Description": "Updated the throttling limit for the [list](https://learn.microsoft.com/en-us/graph/api/user-list?view=graph-rest-v1.0) operation of [user](https://learn.microsoft.com/en-us/graph/api/resources/user?view=graph-rest-v1.0) from 100 requests per minute to 150 requests per minute.",
          "Target": "user"
        }
      ],
      "Id": "b4c5d6e7-f8a9-4b5c-8d9e-0f1a2b3c4d5e",
      "Cloud": "prd",
      "Version": "v1.0",
      "CreatedDateTime": "2024-01-15T13:00:00",
      "WorkloadArea": "Identity and access",
      "SubArea": "Users"
    }
  ]
}
```

### Example 5: Add Permission Support to CRUD Operations

```json
{
  "changelog": [
    {
      "ChangeList": [
        {
          "Id": "d7e8f9a0-b1c2-4d5e-9f0a-1b2c3d4e5f6a",
          "ApiChange": "Permission",
          "ChangedApiName": "User.Read.All",
          "ChangeType": "Addition",
          "Description": "Added support for the `User.Read.All` application permission to the read operations of the [user](https://learn.microsoft.com/en-us/graph/api/resources/user?view=graph-rest-v1.0) resource.",
          "Target": "user"
        },
        {
          "Id": "d7e8f9a0-b1c2-4d5e-9f0a-1b2c3d4e5f6a",
          "ApiChange": "Permission",
          "ChangedApiName": "User.ReadWrite.All",
          "ChangeType": "Addition",
          "Description": "Added support for the `User.ReadWrite.All` application permission to the read and write operations of the [user](https://learn.microsoft.com/en-us/graph/api/resources/user?view=graph-rest-v1.0) resource.",
          "Target": "user"
        }
      ],
      "Id": "d7e8f9a0-b1c2-4d5e-9f0a-1b2c3d4e5f6a",
      "Cloud": "prd",
      "Version": "v1.0",
      "CreatedDateTime": "2024-01-15T14:00:00",
      "WorkloadArea": "Identity and access",
      "SubArea": "Users"
    }
  ]
}
```

## Important Guidelines

### GUID Generation
- Generate a unique GUID for each changelog release
- Use the **same GUID** for:
  - All related changes in the same release (within the ChangeList array)
  - The ChangeList Id property
  - The record-level Id property
- Use PowerShell to generate: `[guid]::NewGuid().ToString()`
- Use online tool: https://www.uuidgenerator.net/

### CreatedDateTime
- Use UTC datetime in ISO 8601/RFC 3339 format with fractional seconds: `YYYY-MM-DDTHH:mm:ss.fffffffZ`
- Example: `2025-11-17T17:38:10.4694969Z`
- PowerShell command: `(Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ss.fffffffZ")`

### Description Best Practices
- Always use full URLs with en-us locale
- Include markdown formatting for property/parameter/method names: `**displayName**`
- Include markdown formatting for query options and permissions: `` `$filter` ``, `` `User.Read.All` ``
- Link to affected resources and operations
- Be specific and clear about what changed

### WorkloadArea and SubArea
- Refer to the Microsoft Graph CDK taxonomy: https://aka.ms/msgraphcdk
- WorkloadArea is the first-level TOC category (e.g., "Identity and access", "Personal productivity")
- SubArea is the second-level TOC category (e.g., "Users", "Mail")
- Use empty string ("") for SubArea if not applicable

### Version Guidelines
- Use **"v1.0"** for production API changes
- Use **"beta"** for preview API changes

**Note:** Cloud is always **"prd"** (production cloud) for changelog entries.

## Validation

Before submitting your changelog entry:
1. ✅ Verify all required properties are present (Id, ApiChange, ChangedApiName, ChangeType, Description, Target)
2. ✅ Confirm GUID format is correct and consistent across all instances
3. ✅ Verify URLs include en-us locale and correct API version
4. ✅ Check that CreatedDateTime is in UTC and ISO 8601/RFC 3339 format with fractional seconds and Z suffix
5. ✅ Validate WorkloadArea and SubArea match the CDK taxonomy
6. ✅ Ensure markdown formatting is correct (backticks for code, bold for properties)
7. ✅ Confirm JSON syntax is valid (proper quotes, commas, brackets)

Run local validation:
```powershell
.\validate-changelog-json.ps1
```
