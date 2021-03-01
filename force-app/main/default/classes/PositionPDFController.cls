public inherited sharing class PositionPDFController {
    
    public Position__c pos { get; set;}
    
    public PositionPDFController() {
        String positionId = System.currentPageReference().getParameters().get('posId');
        this.pos = [SELECT Id, Name, Price__c, Icon__c, Vendor_Code__c, Category__r.Name FROM Position__c WHERE Id =: positionId];
    }
}
