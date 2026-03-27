---
title: "Overview of Microsoft Entra Backup and Recovery APIs"
description: "Learn how to use Microsoft Entra Backup and Recovery APIs as part of your Business Continuity strategy to programmatically back up, preview, and restore directory objects."
author: "FaithOmbongi"
ms.author: "ombongifaith"
ms.reviewer: "yuhko-msft, yuhko-msft"
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.topic: overview
ms.subservice: entra-directory-management
ms.date: 03/18/2026
# Customer intent: As a developer integrating with Microsoft Graph, I want to understand the Entra Backup and Recovery APIs so that I can programmatically back up, preview, and restore my tenant's directory objects.
---

# Overview of Microsoft Entra Backup and Recovery APIs

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The [Microsoft Entra Backup and Recovery](/entra/identity/backup-recovery/overview) APIs in Microsoft Graph enable you to programmatically back up and restore critical directory objects to a previously known good state. These APIs help IT administrators recover from accidental changes or security compromises by viewing available backups, previewing restoration changes, executing recovery operations, and monitoring job progress.

## Supported directory objects

The backup and recovery APIs support the following Microsoft Entra directory objects. For each object type, only a subset of properties and relationships are tracked and supported in the backup and recovery process.

- [Users](../resources/user.md)
- [Groups - Microsoft 365 and security groups](../resources/group.md)
- [Applications](../resources/application.md)
- [Service principals](../resources/serviceprincipal.md)
- [Conditional Access policies](../resources/conditionalaccesspolicy.md)
- [Named location policies](../resources/namedlocation.md)
- [Authentication method policies](../resources/authenticationmethodspolicy.md)
- [Authorization policies](../resources/authorizationpolicy.md)
- [OAuth2 permission grants](../resources/oauth2permissiongrant.md)
- [App role assignments](../resources/approleassignment.md)

Agent identities associated with users, applications, or service principals are also supported.

For more information, see [Supported objects and recoverable properties in Microsoft Entra Backup and Recovery](/entra/backup/scope-supported-objects-limitations).

> [!NOTE]
> Hard-deleted objects can't be recovered. Only objects that were modified, soft-deleted, or newly created since the backup can be addressed by a recovery operation.
> On-premises Active Directory-synced objects with the source of authority on-premises can't be recovered, but changes are visible in the snapshots.

## Key API concepts

### Snapshots

A [snapshot](../resources/entrarecoveryservices-snapshot.md) represents a point-in-time backup of the tenant's directory data. Each snapshot has a unique identifier (base64-encoded timestamp) and tracks the total count of changed objects. Use snapshots as the starting point for both preview and recovery operations.

Microsoft Entra automatically creates one backup snapshot per day and retains up to five days of snapshot history. Snapshots are non-editable and can't be deleted or disabled by any user or application.

### Jobs

The backup and recovery process revolves around two types of jobs: preview jobs and recovery jobs, represented by the [recoveryPreviewJob](../resources/entrarecoveryservices-recoverypreviewjob.md) and [recoveryJob](../resources/entrarecoveryservices-recoveryjob.md) resource types, respectively.

You can scope both preview and recovery jobs to specific subsets of data using filtering criteria:
— Limit the scope to specific entity types (for example, only users, or only users and groups).
— Limit the scope to specific objects identified by entity type and object ID.

Jobs are long-running operations. When you create a job, the response includes a `Location` header with the URL of the created job resource. Poll this resource to check the job status until it completes.
- A successful preview job provides a comprehensive list of objects that would be affected by a recovery operation, along with the specific property changes.
- A successful recovery job applies the necessary changes to restore the tenant's directory objects to the snapshot state. After completion, you can review any failed changes that couldn't be applied.

Only one job (preview or recovery) can run at a time per tenant. Wait for a running job to complete or cancel it before starting a new one.

#### Recovery preview jobs

A [recoveryPreviewJob](../resources/entrarecoveryservices-recoverypreviewjob.md) is a "dry run" that calculates the differences between the current tenant state and a selected snapshot. Preview jobs don't modify any data.

A preview job can be successfully completed, failed, or abandoned (canceled). 
- After a preview job completes, call the [getChanges](../api/entrarecoveryservices-recoverypreviewjob-getchanges.md) function to enumerate the objects that would be affected, along with the specific property changes.
- If a preview job fails, call the [getFailedChanges](../api/entrarecoveryservices-recoveryjob-getfailedchanges.md) function to review the error details and understand the failure reason.
- To cancel a preview job, call the [cancel](../api/entrarecoveryservices-recoveryjobbase-cancel.md) function. No results are available for an abandoned job.

Each changed object returned by `getChanges` or `getFailedChanges` includes a **recoveryAction** property indicating what the recovery operation does to that object:

| Action | Description |
|:---|:---|
| `update` | The object's properties are updated to match the snapshot state. |
| `softDelete` | The object is soft-deleted because it didn't exist in the snapshot or was deleted in the snapshot. |
| `restore` | The object is restored from a soft-deleted state because it existed in the snapshot. |

#### Recovery jobs

Unlike a preview job, a [recoveryJob](../resources/entrarecoveryservices-recoveryjob.md) executes the actual restoration of directory objects to the selected snapshot state. After a recovery job completes, call the [getFailedChanges](../api/entrarecoveryservices-recoveryjob-getfailedchanges.md) function to review any changes that couldn't be applied.

## Typical workflow

The following diagram illustrates the typical end-to-end workflow for using the backup and recovery APIs:

**Step 1: List available snapshots**  
Retrieve the available backups to identify the snapshot you want to restore to.

```http
GET /directory/recovery/snapshots
```

**Step 2: Create a preview job**  
Create a preview job to calculate the differences between the current tenant state and the selected snapshot. Optionally, include filtering criteria to limit the scope.

```http
POST /directory/recovery/snapshots/{snapshot-id}/recoveryPreviewJobs
```

**Step 3: Poll the preview job status**  
The preview job is a long-running operation that returns a `202 Accepted` response with a `Location` header that points to the created job resource. Poll its status until it completes. When the job completes (`successful`, `failed`, or `abandoned` status), retrieve the results.

```http
GET /directory/recovery/snapshots/{snapshot-id}/recoveryPreviewJobs/{job-id}
```

**Step 4: Review the changes**  
After the preview job completes successfully, retrieve the list of objects that would be affected.

```http
GET /directory/recovery/snapshots/{snapshot-id}/recoveryPreviewJobs/{job-id}/getChanges
```

**Step 5: Create a recovery job**  
After reviewing the preview, create a recovery job to apply the changes. You can use the same filtering criteria as the preview.

```http
POST /directory/recovery/snapshots/{snapshot-id}/recoveryJobs
```

**Step 6: Monitor the recovery job**  
The recovery job is a long-running operation that returns a `202 Accepted` response with a `Location` header that points to the created job resource. Poll its status to track progress, including the number of objects and links modified. When the job completes (`successful`, `failed`, or `abandoned` status), retrieve the results.

```http
GET /directory/recovery/snapshots/{snapshot-id}/recoveryJobs/{job-id}
```

**Step 7: Review failed changes (if any)**  
If the recovery job reports failed changes, retrieve the details to understand what couldn't be applied and why.

```http
GET /directory/recovery/snapshots/{snapshot-id}/recoveryJobs/{job-id}/getFailedChanges
```

> [!TIP]
> You can cancel a running preview or recovery job at any time by calling the [cancel](../api/entrarecoveryservices-recoveryjobbase-cancel.md) action. Canceling a job updates its status to `abandoned`.

## Audit logs

All operations performed through the backup and recovery APIs are logged in the Microsoft Entra [audit logs](../resources/directoryaudit.md) with the category "Backup and Recovery". You can use these logs to track when snapshots were created, when preview and recovery jobs were initiated, and their outcomes.

<!-- Add sample query to filter audit logs-->

## Permissions and privileges

The backup and recovery APIs support both delegated and application permissions. For more information about permissions required to call these APIs, see the individual API reference topics for each operation.

In addition to Microsoft Graph permissions, the signed-in user must be assigned one of the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):

- **Microsoft Entra Backup Reader** — For read operations (listing snapshots, viewing jobs, retrieving changes).
- **Microsoft Entra Backup Administrator** — For write operations (creating preview jobs, creating recovery jobs, canceling jobs).

## Limitations

- This feature isn't supported for Entra External ID and Azure AD B2C tenants.
- Backup snapshots are created automatically once per day and retained for five days. You can't create, modify, delete, or export snapshots.
- Not all attributes and linked attributes of the [supported object types](#supported-directory-objects) can be recovered.
- On-premises Active Directory-synced objects can't be recovered through these APIs, though changes are visible in snapshots.
- Job completion time depends on the volume of data and processing complexity. Allow at least 1 hour to complete.
- Recovery to another tenant isn't supported.
- Recovery operations don't generate change notifications through [subscriptions](/graph/api/resources/subscription) or delta records for [change tracking](/graph/delta-query-overview). Applications that rely on these mechanisms aren't notified of changes made by recovery jobs.

## Throttling

The backup and recovery APIs follow standard [Microsoft Graph service-specific throttling limits](/graph/throttling-limits). Monitor `429 Too Many Requests` responses and implement retry logic using the `Retry-After` header.

## Related content

- [snapshot resource type](entrarecoveryservices-snapshot.md)
- [recoveryJobBase resource type](entrarecoveryservices-recoveryjobbase.md)
- [recoveryPreviewJob resource type](entrarecoveryservices-recoverypreviewjob.md)
- [recoveryJob resource type](entrarecoveryservices-recoveryjob.md)
