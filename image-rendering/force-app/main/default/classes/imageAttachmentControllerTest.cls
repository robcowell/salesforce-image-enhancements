@isTest
public class imageAttachmentControllerTest
{

    @TestSetup
    static void makeData()
    {
        WorkOrder wo = new WorkOrder();
        insert wo;

        Work_Order_Attached_Image__c img = new Work_Order_Attached_Image__c();
        img.Work_Order__c = wo.Id;
        img.Image_RTF__c = 'Test';
        insert img;
    }

    @isTest
    static void testCode()
    {
        WorkOrder wo = [SELECT Id from WorkOrder LIMIT 1];
        System.assert(wo != null, 'No work order line item returned');
        List<SObject> images = imageAttachmentController.getImages(wo.id, 'Work_Order_Attached_Image__c');
        System.assert(images != null, 'Images should not be null');
        System.assert(images.size() > 0, 'Images should contain at least 1 element');
    }
}