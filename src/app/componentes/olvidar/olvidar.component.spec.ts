import { ComponentFixture, TestBed } from '@angular/core/testing';

import { OlvidarComponent } from './olvidar.component';

describe('OlvidarComponent', () => {
  let component: OlvidarComponent;
  let fixture: ComponentFixture<OlvidarComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [OlvidarComponent]
    });
    fixture = TestBed.createComponent(OlvidarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
