namespace app.interactions;

/* using { Country } from '@sap/cds/common';
type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024); */

entity Country {
    BusinessKey : String(10);
    SDate       : DateTime;
    LText       : String(1024);
};


entity Interactions_Header {
    key ID        : Integer;
        ITEMS     : Composition of many Interactions_Items
                        on ITEMS.INTHeader = $self;
        PARTNER   : String(10);
        LOG_DATE  : DateTime;       
        BPCOUNTRY : String(1024);        
        /* PARTNER   : BusinessKey;
        LOG_DATE  : SDate;
        BPCOUNTRY : Country; */

};

entity Interactions_Items {

    key INTHeader : Association to Interactions_Header;
    key TEXT_ID   : String(10);
        LANGU     : String(2);
        LOGTEXT   : String(1024);
    /* key TEXT_ID   : BusinessKey;
        LANGU     : String(2);
        LOGTEXT   : LText; */
};
