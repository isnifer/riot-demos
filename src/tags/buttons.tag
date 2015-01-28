<buttons>

    <btn each={button in buttons} classname={button} text={button}></btn>

    <btn-sizes>

    this.buttons = ['default', 'primary', 'success', 'info', 'warning', 'danger', 'link'];

</buttons>

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
