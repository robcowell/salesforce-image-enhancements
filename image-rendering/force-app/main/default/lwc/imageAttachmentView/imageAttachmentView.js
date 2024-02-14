import { LightningElement, wire, api, track } from 'lwc';
import getImages from '@salesforce/apex/ImageAttachmentController.getImages';

export default class ImageAttachmentView extends LightningElement
{
    @api listType;
    @api recordId;

    listlabel;

    @wire(getImages, {recordId : '$recordId', objectName : '$listType'})
    images;

    connectedCallback()
    {
        switch(this.listType)
        {
            case 'Work_Order_Attached_Image__c':
                this.listlabel = 'Work Order Images';
                break;
            default:
                this.listlabel = 'Attached Images';
        }
    }
}