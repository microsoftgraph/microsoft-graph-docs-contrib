---
title: "Use the Microsoft Graph Cloud printing API"
description: "Cloud printing lets organizations simplify and secure the management of their print infrastructure with Microsoft Universal Print."
ms.localizationpriority: high
author: "mnorman-ms"
doc_type: conceptualPageType
ms.subservice: "universal-print"
---

# Use the Microsoft Graph Universal Print API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Universal Print is a modern print solution that organizations can use to manage their print infrastructure through cloud services from Microsoft. Organizations use Universal Print to move key Windows Server print functionality to the Microsoft 365 cloud, simplifying and securing their print infrastructure, streamlining printer management, enabling users to discover printers by location, and more. For more information, see [Universal Print cloud printing API overview](/graph/universal-print-concept-overview). The cloud printing API provides access to Universal Print. Use the cloud printing API to:

- Manage printers and shares.
- Configure cloud-enabled and legacy printer capabilities, settings, and defaults.
- Manage print jobs, print tasks and operations, and Pull Printing.
- Manage printer access through users and groups.
- Report print activity and usage by printer or user.

The cloud printing API provides key features that are described in the following sections.

## Print devices

The [printerShare](./printershare.md) and [printer](./printer.md) resources define the public view and the actual printer, respectively, for a physical printer that is discoverable by users and applications. The printer share is a logical view to a printer resource that represents a physical printer. The underlying physical printer can be changed without changing the printer share, enabling organizations to maintain high printer availability. The printer share contains properties and methods that let you manage which users and groups can perform operations on this printer, such as creating or deleting print jobs. You can use the **printer** property of the printer share to access information about the physical printer, see its status, list and reset its settings, and more.

Cloud-enabled printers can connect directly to Universal print, but legacy printers require a [print connector](./printconnector.md) to connect and enable discovery. For more information about print connectors for legacy print devices, see [The Universal Print connector](/universal-print/fundamentals/universal-print-connector-overview).

### Printing user and group permissions

You manage user and group print permissions with cloud printing APIs that operate on printer share resources. You can add, remove, and list authorized users and groups to a printer share. The permissions applied to the printer share apply to all the physical printers that the share contains. In addition, printer shares have the **allowedUsers** and **allowedGroups** navigation properties, which contain the users and groups, respectively, that are authorized to use the printers that the printer share contains.


## Print jobs, tasks, and operations

[printJob](./printjob.md) objects are the basic unit of work for printing. They have a list of documents to print and another list of [printTask](./printtask.md) objects that describe the print operation to complete. Resources that derive from the [printOperation](./printoperation.md) base resource type, such as[printerCreateOperation](./printercreateoperation.md), represent long-running operations such as creating a new printer.

To print a document, create a print job and pass its unique identifier to [printDocument: createUploadSession](../api/printdocument-createuploadsession.md) after the print task for the print job enters the **processing** state. Then use the session identifier that you received when you created the upload session to send the document to the **document** property of the print job. After this operation completes, you can start the print job to print your document. For more information on uploading documents, see [Upload documents using the Microsoft Graph Universal Print API](/graph/upload-data-to-upload-session).

### Pull printing

In pull printing, the user swipes their badge at a physical printer, which notifies your application via a [printTaskTrigger](./printtasktrigger.md). When your application receives this notification, it can fetch the jobs from the virtual printer and the user can then select which jobs to print. This workflow increases security by reducing the number of unattended documents at the physical printer. 

## Print usage and reports

Use the [printUsageByUser](./printusagebyuser.md) and [printUsageByPrinter](./printusagebyprinter.md) resources report information about the daily or monthly number and type of print jobs for a user or printer. These reports are valuable for understanding your organization's usage of print resources and where there might be problems with your print infrastructure. The APIs that return[archivedPrintJob](./archivedprintjob.md) resources contain detailed information about the historical jobs from a printer, user, or group.

## Related content
- [Universal Print cloud printing API overview](/graph/universal-print-concept-overview)
- [Install Universal Print connector on Windows](/universal-print/fundamentals/universal-print-connector-installation)