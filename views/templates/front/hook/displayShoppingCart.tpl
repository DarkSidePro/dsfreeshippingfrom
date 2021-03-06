{*
* 2007-2021 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2021 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<div id='toSpend'>
   {nocache}
   {if $toSpend > 0}
      <h2 class='h4 p-1' id='toSpendHeading'>{l s='Spend another' mod='dsfreeshippingfrom'} <span id='toSpendAmount'>{$toSpend}</span> {l s='to get free shipping for your order!' mod='dsfreeshippingfrom'}
      </h2>
   {else}
      <h2 class='h4 p-1' id='freeShipping'>{l s='Free shipping!' mod='dsfreeshippingfrom'}</h2>
   {/if}
   {/nocache}
   <script>
      var url= '{url entity='module' name='dsfreeshippingfrom' controller='Tospend' params = [action => 'ToSpendAction']}';
   </script>
</div>