---
title: "Use the Microsoft Graph Cloud printing API"
description: "Cloud printing lets organizations simplify and secure the management of their print infrastructure with Microsoft Universal Print."
ms.localizationpriority: high
author: "mnorman-ms"
doc_type: conceptualPageType
ms.subservice: "universal-print"
---

# Use the Microsoft Graph Universal Print API

Microsoft Universal Print is a modern print solution that organizations can use to manage their print infrastructure through cloud services from Microsoft. Organizations use Universal Print to move key Windows Server print functionality to the Microsoft 365 cloud, simplifying and securing their print infrastructure, streamlining printer management, enabling users to discover printers by location, and more. For more information, see [Universal Print cloud printing API overview](/graph/universal-print-concept-overview). The cloud printing API provides access to Universal Print. Use the cloud printing API to:

- Manage printers and shares.
- Configure cloud-enabled and legacy printer capabilities, settings, and defaults.
- Manage print jobs, print tasks and operations, and Pull Printing.
- Manage printer access through users and groups.
- Report print activity and usage by printer or user.

The cloud printing API provides key features that are described in the following sections.

## Print devices

The [printerShare](./printershare.md) and [printer](./printer.md) resources define the public view and the actual printer, respectively, for a physical printer that is discoverable by users and applications. The printerShare resource is a logical view to a printer resource that represents a physical printer. The underlying physical printer can be changed without changing the printerShare, enabling organizations to maintain high printer availability. The printerShare object contains properties and methods that let you manage which users and groups can perform operations on this printer, such as creating or deleting print jobs. You can use the **printer** property of the printerShare resource to access information about the physical printer, see its status, list and reset its settings, and more.

Cloud-enabled printers can connect directly to Universal print, but legacy printers require a [print connector](./printconnector.md) to connect and enable discovery.

## Print jobs, tasks, and operations

## Print users and groups

## Print usage and reports

## Common use cases


|Use case|Rest APIs|
|:-------|:--------|

## Related content
[What is the Universal Print connector?](/universal-print/fundamentals/universal-print-connector-overview)