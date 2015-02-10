<buttons-bad>

    <btn each={button in buttons} classname={button} text={button} />
    <btn-sizes></btn-sizes>

    this.buttons = ['default', 'primary', 'success', 'info', 'warning', 'danger', 'link'];

</buttons-bad>

<buttons-with-wrapper>

    <div class="bs-example">
        <btn each={button in buttons} classname={button} text={button}></btn>
    </div>
    <div class="bs-example">
        <btn-sizes></btn-sizes>
    </div>

    this.buttons = ['default', 'primary', 'success', 'info', 'warning', 'danger', 'link'];

</buttons-with-wrapper>

<buttons-good>

    <btn-sizes></btn-sizes>
    <btn each={button in buttons} classname={button} text={button}></btn>

    this.buttons = ['default', 'primary', 'success', 'info', 'warning', 'danger', 'link'];

</buttons-good>

<buttons-fail-one>

    <div class="bs-example">
        <btn each={button in buttons} classname={button} text={button}>
        <btn-sizes></btn-sizes>
    </div>

    this.buttons = ['default', 'primary', 'success', 'info', 'warning', 'danger', 'link'];

</buttons-fail-one>

<buttons-fail-two>

    <div class="bs-example">
        <btn each={button in buttons} classname={button} text={button}></btn>
        <btn-sizes></btn-sizes>
    </div>

    this.buttons = ['default', 'primary', 'success', 'info', 'warning', 'danger', 'link'];

</buttons-fail-two>

<buttons-fail-three>

    <div class="bs-example">
        <btn each={button in buttons} classname={button} text={button} />
        <btn-sizes></btn-sizes>
    </div>

    this.buttons = ['default', 'primary', 'success', 'info', 'warning', 'danger', 'link'];

</buttons-fail-three>

<btn>
    <button class={classname} type={type}>{ text }</button>

    var classname = opts.classname ? opts.classname.split(' ') : ['default'];

    this.classname = 'btn btn-' + classname.join(' btn-');

    this.type = opts.type ? opts.type : 'button';

    this.classname += opts.size ? ' btn-' + opts.size : '';

    this.text = opts.text ? opts.text : 'default';

</btn>
