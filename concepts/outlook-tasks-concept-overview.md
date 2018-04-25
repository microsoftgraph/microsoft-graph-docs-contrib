# Outlook to-do tasks API overview (preview)

Outlook Tasks is a simple task manager feature of the OutLook web and desktop clients. It lets customers track their tasks in the same client that they use to manage email and their calendars. The integration with OutLook provides popular OutLook features such as forwarding, attaching files, Outlook messages, and calendar items. Tasks can be assigned to other Outlook users in the same way mail can be sent to other Outlook users and event invitations can be sent to Outlook Users. Tasks can be organized into folders and folders can be organized in groups. Tasks are integrated with OneNote to let a customer keep an extensive and rich set of Task-specific content in one place. All of these Task features are available on the Tasks tab of the Outlook Client.

## Why integrate with Outlook to-do tasks?

By integrating your apps with Outlook Tasks, you can create empowering experiences across multiple platforms that reach millions of users worldwide. You can use Microsoft Graph to access tasks, task attachments, task folders, and task groups to create solutions that help your users track their daily tasks and even automate the creation, update and completion of tasks. With well designed Task automation, you can give users all of the benefits of task tracking while insuring that your organization's work flow is automatically tracked in user tasks.

### Automate the creation of Tasks

If your line-of-business application (lob) generates the work flow that directs users in their work, you can extend the application to create a task for each stage of the workflow and assign the task to a user along with task details, start dates, expected work effort, priority, associated customers, and recurrence. The new task appears in the assigned user's task list. 

### Automate Task updates 

If your application creates a task for a user, it can also automate the update of a task as work progresses on the task. The user can update the task within the Outlook client or your application can automate the update of the task - as long as the assigned user works in your application in the context of the task. Hours worked on the task can be updated, the status, and the completion date can be updated. The Microsoft Graph Outlook Tasks API gives access to the details of the task so your app can even add additional notes to the task as appropriate. 

### Report on Task progress across your organization

Use Microsoft Graph Outlook Tasks API to capture information about the current state of all Outlook Tasks that your application has permission to read. You can create reports in any report generation application that can be extended to connect to Microsoft Graph. Use the [OutlookTask](../api-reference/beta/resources/outlooktask.md) resource

## Next steps

{Include a link to the root node of your API set in the v1.0 reference section.}