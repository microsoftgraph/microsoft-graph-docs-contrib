---
title: "Use the Universal Print REST API"
description: "Learn how you can use the Universal Print API to simplify and secure the Universal Print infrastructure in your organization"
ms.localizationpriority: high
author: "mnorman-ms"
doc_type: conceptualPageType
ms.subservice: "universal-print"
---

# Use the Universal Print API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Universal Print is a modern print solution that organizations can use to manage their print infrastructure through Microsoft cloud services. Organizations use Universal Print to move key Windows Server print functionality to the Microsoft 365 cloud. Using Universal print helps organizations simplify and secure their print infrastructure, streamline printer management, enable users to discover printers by location, and more.

Use the Universal Print API to:

- Manage printers and shares.
- Configure cloud-enabled and legacy printer capabilities, settings, and defaults.
- Manage print jobs, print tasks and operations, and pull printing.
- Manage printer access through users and groups.
- Report print activity and usage by printer or user.

The cloud printing API provides the following key features.

## Access print devices

The [printerShare](./printershare.md) and [printer](./printer.md) resources define the public view and the actual printer for physical printers that are discoverable by users and applications. A **printerShare** is a logical view of **printer** resources that represent physical printers. The underlying physical printers can be changed without changing the printer share, which enables organizations to maintain high printer availability. 

The **printerShare** resource contains properties and methods that let you manage which users and groups can perform operations on that printer, such as creating or deleting print jobs. You can use the **printer** property to access information about the physical printer, see its status, list and reset its settings, and more.

Cloud-enabled printers can connect directly to Universal Print, but legacy printers require a [print connector](./printconnector.md) to connect and enable discovery. For more information about print connectors for legacy print devices, see [What is the Universal Print connector?](/universal-print/fundamentals/universal-print-connector-overview).

## Manage user and group printing permissions

You can manage user and group print permissions with Universal Print APIs that operate on **printerShare** resources. You can add, remove, and list authorized users and groups to a printer share. The permissions applied to the printer share apply to all the physical printers that the share contains. In addition, the **printerShare** resource includes **allowedUsers** and **allowedGroups** navigation properties that contain the users and groups that are authorized to use the printers that the printer share contains.


## Manage print jobs, tasks, and operations

[printJob](./printjob.md) objects are the basic unit of work for printing. They have a list of documents to print and another list of [printTask](./printtask.md) objects that describe the print operation to complete. Resources that derive from the [printOperation](./printoperation.md) base resource type, such as [printerCreateOperation](./printercreateoperation.md), represent long-running operations such as creating a new printer.

To print a document, create a **printJob** and pass its unique identifier to [printDocument: createUploadSession](../api/printdocument-createuploadsession.md) after the print task for the print job enters the **processing** state. Then use the session identifier that you received when you created the upload session to send the document to the **document** property of the **printJob**. After this operation completes, you can start the **printJob** to print your document. For more information about uploading documents, see [Upload documents using the Microsoft Graph Universal Print API](/graph/upload-data-to-upload-session).

## Implement pull printing

In pull printing, the user swipes their badge at a physical printer to enable printing. To implement pull printing, first create a virtual printer and then create a [printTaskTrigger](./printtasktrigger.md) on it. When a job is submitted, it pauses and your application can be notified. When the user swipes their badge at the physical printer, your application can redirect the job from virtual printer to the physical printer. This workflow increases security by reducing the number of unattended documents at the physical printer. 

## Get print usage data and reports

Use the [printUsageByUser](./printusagebyuser.md) and [printUsageByPrinter](./printusagebyprinter.md) resources to report information about the daily or monthly number and type of print jobs for a user or printer. These reports are valuable for understanding your organization's usage of print resources and where there might be problems with your print infrastructure. The APIs that return [archivedPrintJob](./archivedprintjob.md) resources contain detailed information about the historical jobs from a printer, user, or group.

## Related content
[Universal Print cloud printing API overview](/graph/universal-print-concept-overview)