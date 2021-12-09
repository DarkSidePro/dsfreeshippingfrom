<?php
/**
* Advance Blog
*
* NOTICE OF LICENSE
*
* This source file is subject to the Open Software License (OSL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/osl-3.0.php
*
* @author    Dark-Side.pro
* @copyright Copyright 2017 © Dark-Side.pro All right reserved
* @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
* @category  FO Module
* @package   dsafillate
*/

class DsfreeshippingfromTospendModuleFrontController extends ModuleFrontController
{
    public $ssl = false;
    public $guestAllowed = true;
    public $auth = false;

    public function initContent()
    {
        $this->ajax = true;
        parent::initContent();
    }

    public function postProcess()
    {
    }

    public function displayAjaxToSpendAction()
    {
        $cart = $this->context->cart;
        $cartTotal = $cart->getOrderTotal(false, Cart::BOTH_WITHOUT_SHIPPING);
        $free_shipping = Configuration::get('PS_SHIPPING_FREE_PRICE');
        $free_shipping_price = Tools::convertPrice($free_shipping);
        $toSpend = $free_shipping_price - $cartTotal;
        $toSpend = Tools::displayPrice($toSpend);

        echo $toSpend;
        die();
    }
}