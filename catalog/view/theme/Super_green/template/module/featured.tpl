<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div style="position:relative; text-align:center;">
		<?php if ($product['price']) { ?>
			<?php if ($product['special']) { ?>
				<span class="price-old"><?php echo $product['price']; ?></span>
			<?php } ?>
		<?php } ?>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <input type="button" class="price_module" value="<?php echo $product['price']; ?>"/><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="module_button" />
          <?php } else { ?>
		  <input type="button" class="price_module" value="<?php echo $product['special']; ?>"/><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="module_button" />
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <div class="cart"></div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
