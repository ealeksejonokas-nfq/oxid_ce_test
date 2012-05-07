<?php

/**
 * @copyright C UAB “Net Frequency” 2012
 *
 * This Software is the property of “Net Frequency”
 * and is protected by copyright law – it is NOT Freeware.
 *
 * Any unauthorized use of this software without a valid license key
 * is a violation of the license agreement and will be prosecuted by
 * civil and criminal law.
 *
 * Contact UAB “Net Frequency”:
 * E-mail: info@nfq.lt
 * http://www.nfq.lt
 *
 */

class nfq_hot_offer extends oxAdminDetails
{

    /**
     * Returns TRUE if current product is an hot offer
     *
     * @return bool
     */
    public function isEntryChecked()
    {
        $oDb = oxDb::getDb();
        $sId = $this->getEditObjectId();
        $sQ = "select nfqhotoffer from oxarticles where oxid = ".$oDb->quote( $sId );
        return (bool) oxDb::getDb()->getOne( $sQ, false, false );
    }

    public function setEntry($value)
    {
        $oDb = oxDb::getDb();
        $sId = $this->getEditObjectId();
        $sQ = "update oxarticles set nfqhotoffer = ".$oDb->quote( $value )." where oxid = ".$oDb->quote( $sId );
        oxDb::getDb()->Execute($sQ);
    }

    public function render()
    {
        parent::render();

        $this->_aViewData["edit"] = $oArticle = oxNew( "oxarticle");

        $soxId = $this->getEditObjectId();

        if ( $soxId != "-1" && isset( $soxId ) ) {
            // load object
            $oArticle->load($soxId);
        }

        return "nfq_hot_offer.tpl";
    }

    /**
     * Saves (uploads) pictures to server.
     *
     * @return mixed
     */
    public function save()
    {
        parent::save();

        $checked = isset($_POST['iHotOffer']);
        $this->setEntry((int)$checked);
    }
}