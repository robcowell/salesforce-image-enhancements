public without sharing class imageAttachmentController
{
    @AuraEnabled(cacheable=true)
    public static List<SObject> getImages(Id recordId, String objectName)
    {
        //System.debug(recordId + ' - ' + objectName);
        List<SObject> images = new List<SObject>();
        
        if(recordId != null && objectName != null)
        {
            String objectType = recordId.getSObjectType().getDescribe().getName();
            if(objectType == 'WorkOrder')    //Work Order
            {
                String query = 'SELECT Image_RTF__c FROM ' + objectName + ' WHERE Work_Order__c = \'' + recordId + '\'';
                //System.debug(query);
                images = Database.query(query);
            }
        }
        return images;
    }
}