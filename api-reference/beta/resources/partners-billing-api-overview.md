---
title: "Use the Microsoft Graph API to export partner billing data"
description: "The partner billing API in Microsoft Graph offers Microsoft direct partners a faster, more efficient way to export their high-volume billed and unbilled Azure usage data."
author: "sourishdeb"
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.subservice: "reports"
---

# Use the Microsoft Graph API to export partner billing data

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

As part of the Microsoft Partner Center ecosystem, Microsoft direct partners in the Cloud Solution Provider programs can request to export their billed and unbilled data to Azure Blob Storage asynchronously. This removes the need to maintain an open connection for hours and loop through millions of transactions iteratively. The asynchronous API provides a way to quickly access billing and reconciliation data in manageable chunks.

The partner billing API is defined in the OData subnamespace `microsoft.graph.partners.billing`.

> [!NOTE]
> Daily-rated usage normally takes 24 hours to appear in the Microsoft Partner Center or to be available through the API.

## Authorization

To export reconciliation data, the calling principal must be in the partner tenant and be granted the appropriate partner billing privilege permissions. The partner billing API supports the following partner permissions.

[!INCLUDE [permissions-table](../includes/permissions/partners-permissions.md)]

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->


## Common use cases

The partner billing API provides methods and actions that allow Microsoft direct partners to export their high-volume billed reconciliation data and billed and unbilled Azure usage data.

### Billed usage data

| Use case | API |
|--|--|
| Create a new export operation to export billed usage data | [billedUsage: export](../api/partners-billing-billedusage-export.md) |
| Poll for operation status update | [Get operation](../api/partners-billing-operation-get.md) |

### Unbilled usage data

| Use case | API |
|--|--|
| Create a new export operation to export unbilled usage data | [unbilledUsage: export](../api/partners-billing-unbilledusage-export.md) |
| Poll for operation status update | [Get operation](../api/partners-billing-operation-get.md) |

### Billed invoice reconciliation data

| Use case | API |
|--|--|
| Create a new export operation to export billed invoice reconciliation data | [billedReconciliation: export](../api/partners-billing-billedreconciliation-export.md) |
| Poll for operation status update | [Get operation](../api/partners-billing-operation-get.md) |


## Asynchronous data retrieval

The download of usage or reconciliation data is a long-running operation that consists of the following operations.

### Usage line-item endpoint

Use the [billedUsage: export](../api/partners-billing-billedusage-export.md) or [unbilledUsage: export](../api/partners-billing-unbilledusage-export.md) API to access billed or unbilled consumption line items. The API returns a `202 Accepted` response code and a `Location` header that contains the URL to the long-running operation. You can check the status of the long-running operation by making a GET request at regular intervals until you receive a success status with a [manifest](../resources/partners-billing-manifest.md) URL.

### Non-usage line-item endpoint

Use the [billedReconciliation: export](../api/partners-billing-billedreconciliation-export.md) API to access billed invoice reconciliation line items. The API returns a `202 Accepted` response code and a `Location` header that contains the URL to the long-running operation. You can check the status of the long-running operation by making a GET request at regular intervals until you receive a success status with a [manifest](../resources/partners-billing-manifest.md) URL.


### Operation status endpoint

Until you receive the success status, keep polling the [Get operation](../api/partners-billing-operation-get.md) API at regular intervals. If the requested data is unavailable, the API response includes a `Retry-After` header that indicates how long you should wait before sending another request. When the operation has completed successfully, the response also provides a [manifest](../resources/partners-billing-manifest.md) with details of the generated files. The manifest provides a storage folder from which actual billing data can be downloaded. The response splits or partitions the files to optimize throughput and I/O parallelism.


<!-- {
  "type": "#page.annotation",
  "description": "Partner billing invoicing and reconciliation API overview",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}-->
