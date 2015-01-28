<buttons-good>

    <btn-sizes></btn-sizes>
    <btn each={button in buttons} classname={button} text={button}></btn>

    this.buttons = ['default', 'primary', 'success', 'info', 'warning', 'danger', 'link'];

</buttons-good>

<buttons-with-wrapper>

    <div class="bs-example">
        <btn each={button in buttons} classname={button} text={button}></btn>
    </div>
    <div class="bs-example">
        <btn-sizes></btn-sizes>
    </div>

    this.buttons = ['default', 'primary', 'success', 'info', 'warning', 'danger', 'link'];

</buttons-with-wrapper>

<buttons-bad>

    <btn each={button in buttons} classname={button} text={button}></btn>
    <btn-sizes><h1>TAG CONTENT GENERATE TWICE</h1></btn-sizes>

    this.buttons = ['default', 'primary', 'success', 'info', 'warning', 'danger', 'link'];

</buttons-bad>

<btn>
    <button class={classname} type={type}>{ opts.text }</button>

    var classname = opts.classname.split(' ');

    <!-- ClassNames: default, primary, success, info, warning, danger, link -->
    this.classname = 'btn btn-' + classname.join(' btn-');

    <!-- Types: button, submit, etc. -->
    this.type = opts.type ? opts.type : 'button';

    <!-- Size: lg, sm, xs -->
    this.classname += opts.size ? ' btn-' + opts.size : '';

</btn>
