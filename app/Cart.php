<?php

namespace App;


class Cart
{
    public $items= null;
    public $totalQty = 0;
    public $totalPrice = 0;

    public function __construct($oldCart)
    {
        if ($oldCart){
            $this->items = $oldCart->items;
            $this->totalQty = $oldCart->totalQty;
            $this->totalPrice = $oldCart->totalPrice;
        }
    }

    public function add($item, $id){
        $storedItem = ['qty' =>0, 'products_price' =>$item->products_price, 'item' => $item];
        if($this->items){
            if(array_key_exists($id, $this->items)){
                $storedItem = $this->items[$id];
            }
        }
        $storedItem['qty']++;
        $storedItem['products_price']= $item->products_price * $storedItem['qty'];
        $this->items[$id] = $storedItem;
        $this->totalQty++;
        $this->totalPrice += $item->products_price;
    }
   

    public function reduceByOne($id){
        $this->items[$id]['qty']--;
        $this->items[$id]['products_price'] -= $this->items[$id]['item'] ['products_price'];
        $this->totalQty--;
        $this->totalPrice -= $this->items[$id]['item']['products_price'];

        if($this->items[$id]['qty']<=0){
            unset($this->items[$id]);
        }
    }
    
      public function plusByOne($id){
        $this->items[$id]['qty']++;
        $this->items[$id]['products_price'] += $this->items[$id]['item'] ['products_price'];
        $this->totalQty++;
        $this->totalPrice += $this->items[$id]['item']['products_price'];

        if($this->items[$id]['qty']<=0){
            unset($this->items[$id]);
        }
    }
    
    public function removeItem($id){
        $this->totalQty -=$this->items[$id]['qty'];
        $this->totalPrice -= $this->items[$id]['products_price'];
        unset($this->items[$id]);


  
    }


}
