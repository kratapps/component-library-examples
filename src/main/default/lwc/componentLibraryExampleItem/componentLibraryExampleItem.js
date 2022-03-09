import {LightningElement, api} from 'lwc';

export default class ComponentLibraryExampleItem extends LightningElement {
    @api title;
    @api size = 4;
}