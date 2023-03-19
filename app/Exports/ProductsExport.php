<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithDrawings;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ProductsExport implements FromCollection, WithHeadings
{
    private $products;
    public function __construct($products)
    {
        $this->products = $products;
    }

    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $products = $this->products;
        $formatProducts = [];

        foreach ($products as $key => $item) {
            $formatProducts[] = [
              "id" => $item->id,
              "pro_name" => $item->pro_name,
              "pro_slug" => $item->pro_slug,
              "pro_price" => $item->pro_price,
              "pro_price_entry" => $item->pro_price_entry,
              "pro_category_id" => $item->pro_category_id,
              "pro_admin_id" => $item->pro_admin_id,
              "pro_sale" => $item->pro_sale,
              "pro_avatar" => $item->pro_avatar,
              "pro_view" => $item->pro_view,
              "pro_hot" => $item->pro_hot,
              "pro_active" => $item->pro_active,
              "pro_pay" => $item->pro_pay,
              "pro_description" => $item->pro_description,
              "pro_content" => $item->pro_content,
              "pro_review_total" => $item->pro_review_total,
              "pro_review_star" => $item->pro_review_star,
              "pro_age_review" => $item->pro_age_review,
              "created_at" => $item->created_at,
              "pro_number" => $item->pro_number,
              "pro_country" => $item->pro_country,
              "updated_at" => $item->updated_at,
            ];
        }

        return collect($formatProducts);
    }

    public function headings(): array
    {
        return [
            "id",
            "pro_name",
            "pro_slug",
            "pro_price",
            "pro_price_entry",
            "pro_category_id",
            "pro_admin_id",
            "pro_sale",
            "pro_avatar",
            "pro_view",
            "pro_hot",
            "pro_active",
            "pro_pay",
            "pro_description",
            "pro_content",
            "pro_review_total",
            "pro_review_star",
            "pro_age_review",
            "created_at",
            "pro_number",
            "pro_country",
            "updated_at",
        ];
    }

}
