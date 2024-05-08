@extends('partial.adm_master')

@section('cssneeded')

@endsection

@section('admin_content')

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        @if(session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <i class="fa fa-exclamation-circle me-2"></i>{{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif

        <!-- mulai form -->
        <div class="col-sm-12 col-xl-7">
            <div class="bg-secondary rounded h-100 p-4">
                <div class="mb-4 d-flex">
                    <a href="/formulir/products" class="text-decoration-none">
                        <button class="btn-circle text-white">
                            <i class="fa-solid fa-arrow-left"></i>
                        </button>
                    </a>
                    <h6 class="my-2 mx-3">Tambah Gambar Pada Produk</h6>
                </div>
                <form method="POST" action="/formulir/image_products" enctype="multipart/form-data">
                    @csrf
                    <div class="form-floating mb-3">
                        <select class="form-select" name="product_id" id="product_id">
                            @foreach ($products as $product)
                            @if(old('product_id') == $product->id)
                            <option value="{{ $product->id }}" selected>{{ $product->name }}</option>
                            @else
                            <option value="{{ $product->id }}">{{ $product->name }}</option>
                            @endif
                            @endforeach
                            <!-- <option value="1" selected>Blog</option> -->
                        </select>
                        <label for="product_id">Pilih barang yang ingin ditambahkan gambar</label>
                    </div>
                    <div class="mb-3">
                        <label for="image" name="image" class="form-label">Tambahkan gambar (galeri)</label>
                        <img class="img-preview img-fluid mb-3 col-sm-5 d-block" src="https://dummyimage.com/400x400/ced4da/6c757d.jpg">
                        <input class="form-control bg-dark @error('image') is-invalid @enderror" type="file" id="image" name="image" accept="image/*" onchange="previewImage()">
                        @error('image')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <button class="btn btn-outline-success w-100 my-2" type="submit">Simpan</button>
                </form>
            </div>
        </div>

        <!-- bagian keterangan -->
        <div class="col-sm-12 col-xl-5">
            <div class="bg-secondary rounded h-100 p-4">
                <h6 class="mb-4">Petunjuk Pengisian Data</h6>
                <div class="form-floating mb-3">
                    <h6>Jenis Produk</h6>
                    <p>Jenis produk yaitu nama produk yang ingin ditambahkan gambar didalamnya </p>
                </div>
                <div class="form-floating mb-3">
                    <h6>Gambar Produk</h6>
                    <p>Gambar produk nantinya akan menjadi galeri pada bagian produk</p>
                </div>
                Pastikan tidak ada data yang kosong sebelum menekan tombol "Simpan".
            </div>
        </div>
    </div>
</div>

@endsection

@section('jsneeded')
<script>
    const name = document.querySelector('#name');
    const slug = document.querySelector('#slug');

    name.addEventListener('change', function() {
        fetch('/formulir/products/checkSlug?name=' + name.value)
            .then(response => response.json())
            .then(data => slug.value = data.slug)
    });
</script>
@endsection